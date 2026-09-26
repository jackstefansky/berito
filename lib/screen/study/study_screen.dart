import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/widgets.dart';

class StudyScreen extends StatelessWidget {
  const StudyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(title: 'Studia'),
      body: const SizedBox.shrink(),
    );
  }
}
