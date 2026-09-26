import 'dart:async';

import 'package:berito/app/app.dart';
import 'package:berito/core/di/di.dart';
import 'package:berito/repository/repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> settle(WidgetTester tester) async {
  for (var i = 0; i < 5; i++) {
    await tester.pump(const Duration(milliseconds: 800));
  }
}

Future<void> boot(
  WidgetTester tester,
  Map<String, Object> storedPrefs,
) async {
  SharedPreferences.setMockInitialValues(storedPrefs);
  await tester.runAsync(() async {
    await getIt.reset();
    await configureDependencies();
  });
  await tester.pumpWidget(const BeritoApp());
  await settle(tester);
}

void main() {
  testWidgets('starts on login, signs in, lands on home', (tester) async {
    await boot(tester, {});
    expect(find.text('Zaloguj się'), findsWidgets);

    unawaited(getIt<AuthRepository>().signIn(
      email: MockData.email,
      password: MockData.password,
    ));
    await settle(tester);
    expect(find.textContaining('Witaj, Jan'), findsOneWidget);

    unawaited(getIt<AuthRepository>().signOut());
    await settle(tester);
    expect(find.text('Zaloguj się'), findsWidgets);
  });

  testWidgets('stays signed in when a session was persisted', (tester) async {
    await boot(tester, {
      'auth.userId': 's1',
      'auth.email': MockData.email,
    });
    expect(find.textContaining('Witaj, Jan'), findsOneWidget);
  });

  testWidgets('signing out clears the persisted session', (tester) async {
    await boot(tester, {
      'auth.userId': 's1',
      'auth.email': MockData.email,
    });
    unawaited(getIt<AuthRepository>().signOut());
    await settle(tester);
    expect(await getIt<AuthRepository>().restoreSession(), isNull);
    expect(find.text('Zaloguj się'), findsWidgets);
  });
}
