import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:berito/core/constant/constant.dart';
import 'package:berito/core/error/error.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'auth_token_storage.dart';

/// Thin wrapper over [http.Client] for the Express server: resolves paths
/// against [ApiConfig.baseUrl], attaches the session token and maps transport
/// errors to `Failure`.
@lazySingleton
class ApiClient {
  ApiClient(this._client, this._tokens);

  final http.Client _client;
  final AuthTokenStorage _tokens;

  static const _timeout = Duration(seconds: 10);

  Uri uri(String path) => Uri.parse('${ApiConfig.baseUrl}$path');

  /// Runs [request], throwing a `Failure` if the server can't be reached.
  Future<http.Response> send(Future<http.Response> Function() request) async {
    try {
      return await request().timeout(_timeout);
    } on SocketException {
      throw const Failure('Brak połączenia z serwerem');
    } on http.ClientException {
      throw const Failure('Brak połączenia z serwerem');
    } on TimeoutException {
      throw const Failure('Serwer nie odpowiada');
    }
  }

  /// Authenticated GET returning the decoded JSON body. Throws a `Failure`
  /// on any non-200 response.
  Future<Object?> getJson(String path) async {
    final token = _tokens.token;
    final response = await send(
      () => _client.get(
        uri(path),
        headers: {
          if (token != null) HttpHeaders.authorizationHeader: 'Bearer $token',
        },
      ),
    );
    if (response.statusCode == 401) throw const Failure('Sesja wygasła');
    if (response.statusCode != 200) throw const Failure('Błąd serwera');
    return jsonDecode(response.body);
  }
}
