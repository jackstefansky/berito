import 'package:flutter/cupertino.dart';

/// Small icon + text line used inside cards.
class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.icon,
    required this.text,
    this.color,
  });

  final IconData icon;
  final String text;

  /// Defaults to the secondary label color.
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final secondary =
        color ?? CupertinoColors.secondaryLabel.resolveFrom(context);
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Row(
        children: [
          Icon(icon, size: 14, color: secondary),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12.5, color: secondary),
            ),
          ),
        ],
      ),
    );
  }
}
