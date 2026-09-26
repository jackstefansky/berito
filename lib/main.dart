import 'package:berito/app/app.dart';
import 'package:berito/core/di/di.dart';
import 'package:flutter/widgets.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const BeritoApp());
}
