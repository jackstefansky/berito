/// Domain-level error surfaced by repositories, independent of the data source.
class Failure implements Exception {
  const Failure(this.message);

  final String message;

  @override
  String toString() => 'Failure: $message';
}
