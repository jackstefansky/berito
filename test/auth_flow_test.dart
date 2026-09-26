import 'dart:async';

import 'package:berito/app/app.dart';
import 'package:berito/core/di/di.dart';
import 'package:berito/repository/repository.dart';
import 'package:flutter/widgets.dart';
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

  testWidgets('bottom bar switches between the five tabs', (tester) async {
    await boot(tester, {
      'auth.userId': 's1',
      'auth.email': MockData.email,
    });
    for (final tab in ['Studia', 'Plecak', 'Więcej']) {
      await tester.tap(find.text(tab).last);
      await settle(tester);
      // Tab label in the bar plus the page's own title.
      expect(find.text(tab), findsAtLeastNWidgets(2), reason: tab);
    }
    await tester.tap(find.text('Dziś').last);
    await settle(tester);
    expect(find.textContaining('Witaj, Jan'), findsOneWidget);
  });

  testWidgets('Dziś shows greeting and the three sections', (tester) async {
    await boot(tester, {
      'auth.userId': 's1',
      'auth.email': MockData.email,
    });
    expect(find.text('Witaj, Jan!'), findsOneWidget);
    expect(find.text('Nadchodzące zajęcia'), findsOneWidget);
    expect(find.text('Systemy rozproszone'), findsWidgets);
    expect(find.textContaining('Wykład'), findsOneWidget);
    expect(find.textContaining('Laboratoria'), findsOneWidget);
    await tester.drag(find.byType(ListView).first, const Offset(0, -1500));
    await settle(tester);
    expect(find.text('Komunikacja'), findsOneWidget);
  });

  testWidgets('Studia shows schedule by day and grades', (tester) async {
    await boot(tester, {
      'auth.userId': 's1',
      'auth.email': MockData.email,
    });
    await tester.tap(find.text('Studia').last);
    await settle(tester);
    expect(find.text('Harmonogram'), findsOneWidget);
    expect(find.text('Oceny'), findsOneWidget);
    // Day headers group the classes (e.g. two classes share one header).
    expect(find.textContaining('Systemy rozproszone'), findsWidgets);

    await tester.tap(find.text('Oceny'));
    await settle(tester);
    expect(find.text('5'), findsOneWidget);
    expect(find.text('4,5'), findsOneWidget);
    await tester.drag(find.byType(ListView).first, const Offset(0, -1500));
    await settle(tester);
    expect(find.text('Fizyka'), findsOneWidget);
  });

  testWidgets('Zadania lists upcoming assignments', (tester) async {
    await boot(tester, {
      'auth.userId': 's1',
      'auth.email': MockData.email,
    });
    await tester.tap(find.text('Zadania').last);
    await settle(tester);
    expect(find.text('Aplikacja mobilna – etap 2'), findsOneWidget);
    expect(find.textContaining('Projekt ·'), findsWidgets);
    expect(find.textContaining('(za 2 dni)'), findsOneWidget);
  });
}
