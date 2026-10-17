/// Injectable environments selecting which repository implementations are used.
abstract final class AppEnvironment {
  /// Express server (`server/`).
  static const remote = 'remote';

  /// In-memory mocks.
  static const mock = 'mock';
}
