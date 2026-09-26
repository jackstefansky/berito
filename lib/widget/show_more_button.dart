import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/core/theme/theme.dart';
import 'package:flutter/widgets.dart';

/// "Pokaż więcej" button at the bottom of a section. Not functional yet.
class ShowMoreButton extends StatelessWidget {
  const ShowMoreButton({super.key, this.label = 'Pokaż więcej'});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: AdaptiveButton(
        // TODO: navigate to the full list.
        onPressed: () {},
        style: AdaptiveButtonStyle.plain,
        color: AppTheme.brandGreen,
        padding: const EdgeInsets.symmetric(vertical: 4),
        label: label,
      ),
    );
  }
}
