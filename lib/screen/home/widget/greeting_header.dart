import 'package:berito/core/theme/theme.dart';
import 'package:flutter/widgets.dart';

class GreetingHeader extends StatelessWidget {
  const GreetingHeader({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Witaj, $name!',
      style: const TextStyle(
        fontFamily: AppFonts.heading,
        fontSize: 32,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
