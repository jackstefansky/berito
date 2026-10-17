import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:berito/core/constant/constant.dart';
import 'package:berito/core/error/error.dart';
import 'package:berito/model/model.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

/// Talks to the Express auth server in `server/`.
@lazySingleton
class AuthRemoteDataSource {
  AuthRemoteDataSource(this._client);

  final http.Client _client;

  static const _timeout = Duration(seconds: 10);

  Uri _uri(String path) => Uri.parse('${ApiConfig.baseUrl}$path');

  Map<String, String> _bearer(String token) => {
    HttpHeaders.authorizationHeader: 'Bearer $token',
  };

  /// Throws a `Failure` when the credentials are rejected or the server is
  /// unreachable.
  Future<({String token, AuthSession session})> login({
    required String email,
    required String password,
  }) async {
    final response = await _send(
      () => _client.post(
        _uri('/auth/login'),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      ),
    );
    final json = _decode(response);
    if (response.statusCode != 200) {
      throw Failure(json['error'] as String? ?? 'Nie udało się zalogować');
    }
    return (
      token: json['token'] as String,
      session: AuthSession(
        userId: json['userId'] as String,
        email: json['email'] as String,
      ),
    );
  }

  /// The session behind [token], or null if the server no longer accepts it.
  /// Throws a `Failure` if the server is unreachable.
  Future<AuthSession?> fetchSession(String token) async {
    final response = await _send(
      () => _client.get(_uri('/auth/session'), headers: _bearer(token)),
    );
    if (response.statusCode == 401) return null;
    if (response.statusCode != 200) {
      throw const Failure('Błąd serwera');
    }
    final json = _decode(response);
    return AuthSession(
      userId: json['userId'] as String,
      email: json['email'] as String,
    );
  }

  Future<void> logout(String token) =>
      _send(() => _client.post(_uri('/auth/logout'), headers: _bearer(token)));

  Future<http.Response> _send(Future<http.Response> Function() request) async {
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

  Map<String, dynamic> _decode(http.Response response) {
    if (response.body.isEmpty) return const {};
    try {
      return jsonDecode(response.body) as Map<String, dynamic>;
    } on FormatException {
      return const {};
    }
  }
}
