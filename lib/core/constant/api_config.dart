import 'dart:io';

abstract final class ApiConfig {
  /// Override with `--dart-define=API_URL=http://<host>:3000`, e.g. for a
  /// physical device. The defaults reach the host machine from the Android
  /// emulator and the iOS simulator.
  static final baseUrl = const String.fromEnvironment('API_URL').isNotEmpty
      ? const String.fromEnvironment('API_URL')
      : Platform.isAndroid
      ? 'http://10.0.2.2:3000'
      : 'http://localhost:3000';
}
