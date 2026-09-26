import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/widgets.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(title: 'Zadania'),
      body: const SizedBox.shrink(),
    );
  }
}
