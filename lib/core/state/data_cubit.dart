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
    await _fetch();
  }

  /// Reloads without switching to [AsyncLoading], so the current data stays
  /// visible (pull to refresh). If it fails while data is shown, the old data
  /// is kept.
  Future<void> refresh() => _fetch(keepDataOnFailure: true);

  Future<void> _fetch({bool keepDataOnFailure = false}) async {
    try {
      emit(AsyncLoaded(await _loader()));
    } catch (e) {
      if (keepDataOnFailure && state is AsyncLoaded<T>) return;
      emit(AsyncFailed(e is Failure ? e : Failure(e.toString())));
    }
  }
}
