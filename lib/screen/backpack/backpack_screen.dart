import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/widgets.dart';

class BackpackScreen extends StatelessWidget {
  const BackpackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(title: 'Plecak'),
      body: const SizedBox.shrink(),
    );
  }
}
