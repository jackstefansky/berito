import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/core/theme/theme.dart';
import 'package:flutter/widgets.dart';

/// "Pokaż więcej" button at the bottom of a section.
class ShowMoreButton extends StatelessWidget {
  const ShowMoreButton({
    super.key,
    required this.onPressed,
    this.label = 'Pokaż więcej',
  });

  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: AdaptiveButton(
        onPressed: onPressed,
        style: AdaptiveButtonStyle.plain,
        color: AppTheme.brandGreen,
        padding: const EdgeInsets.symmetric(vertical: 4),
        label: label,
      ),
    );
  }
}
