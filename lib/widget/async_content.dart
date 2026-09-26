import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:berito/core/state/state.dart';

/// Renders loading / error / loaded states of a cubit emitting [AsyncState].
class AsyncContent<C extends StateStreamable<AsyncState<T>>, T>
    extends StatelessWidget {
  const AsyncContent({super.key, required this.builder});

  final Widget Function(BuildContext context, T data) builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<C, AsyncState<T>>(
      builder: (context, state) => switch (state) {
        AsyncLoading() =>
          const Center(child: CircularProgressIndicator.adaptive()),
        AsyncFailed(:final failure) => Center(child: Text(failure.message)),
        AsyncLoaded(:final data) => builder(context, data),
      },
    );
  }
}
