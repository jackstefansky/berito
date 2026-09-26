import 'package:berito/app/app.dart';
import 'package:berito/core/di/di.dart';
import 'package:flutter/widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const BeritoApp());
}
