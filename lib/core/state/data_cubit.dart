import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:berito/core/error/error.dart';
import 'async_state.dart';

/// Base cubit for screens that load a single piece of data.
/// Subclass and pass the repository call as [loader].
abstract class DataCubit<T> extends Cubit<AsyncState<T>> {
  DataCubit(this._loader) : super(const AsyncLoading()) {
    load();
  }

  final Future<T> Function() _loader;

  Future<void> load() async {
    emit(const AsyncLoading());
    try {
      emit(AsyncLoaded(await _loader()));
    } on Failure catch (f) {
      emit(AsyncFailed(f));
    } catch (e) {
      emit(AsyncFailed(Failure(e.toString())));
    }
  }
}
