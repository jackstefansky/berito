import 'dart:async';

import 'package:berito/core/auth/auth.dart';
import 'package:berito/core/di/di.dart';
import 'package:berito/screen/screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import 'app_route.dart';

@lazySingleton
class AppRouter {
  AppRouter(AuthCubit authCubit)
      : router = GoRouter(
          initialLocation: AppRoute.splash,
          refreshListenable: _StreamListenable(authCubit.stream),
          redirect: (context, state) {
            final location = state.matchedLocation;
            return switch (authCubit.state) {
              AuthUnknown() =>
                location == AppRoute.splash ? null : AppRoute.splash,
              AuthUnauthenticated() =>
                location == AppRoute.login ? null : AppRoute.login,
              AuthAuthenticated() =>
                location == AppRoute.home ? null : AppRoute.home,
            };
          },
          routes: [
            GoRoute(
              path: AppRoute.splash,
              builder: (context, state) => const SplashScreen(),
            ),
            GoRoute(
              path: AppRoute.login,
              builder: (context, state) => BlocProvider(
                create: (_) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
            ),
            GoRoute(
              path: AppRoute.home,
              builder: (context, state) => BlocProvider(
                create: (_) => getIt<HomeCubit>(),
                child: const HomeScreen(),
              ),
            ),
          ],
        );

  final GoRouter router;
}

/// Makes GoRouter re-run `redirect` whenever the stream emits.
class _StreamListenable extends ChangeNotifier {
  _StreamListenable(Stream<dynamic> stream) {
    _subscription = stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
