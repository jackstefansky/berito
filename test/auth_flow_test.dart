import 'dart:async';

import 'package:berito/app/app.dart';
import 'package:berito/core/di/di.dart';
import 'package:berito/repository/repository.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> settle(WidgetTester tester) async {
  for (var i = 0; i < 5; i++) {
    await tester.pump(const Duration(milliseconds: 800));
  }
}

void main() {
  testWidgets('starts on login, signs in, lands on home', (tester) async {
    configureDependencies();
    await tester.pumpWidget(const BeritoApp());
    await settle(tester);
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
}
