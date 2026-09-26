import 'package:berito/core/error/error.dart';

sealed class AsyncState<T> {
  const AsyncState();
}

class AsyncLoading<T> extends AsyncState<T> {
  const AsyncLoading();
}

class AsyncLoaded<T> extends AsyncState<T> {
  const AsyncLoaded(this.data);
  final T data;
}

class AsyncFailed<T> extends AsyncState<T> {
  const AsyncFailed(this.failure);
  final Failure failure;
}
