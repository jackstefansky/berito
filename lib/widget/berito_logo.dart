import 'package:berito/core/theme/theme.dart';
import 'package:flutter/material.dart';

/// App logo: a heavy "B" in brand green inside a rounded rectangle border.
class BeritoLogo extends StatelessWidget {
  const BeritoLogo({super.key, this.size = 88});

  final double size;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontSize: size * 0.58,
      fontWeight: FontWeight.w900, // heaviest weight the font offers
      height: 1,
    );
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size * 0.26),
        border: Border.all(color: AppTheme.brandGreen, width: size * 0.06),
      ),
      // A stroke drawn over the fill thickens the letter beyond w900.
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text('B', style: style.copyWith(color: AppTheme.brandGreen)),
          Text(
            'B',
            style: style.copyWith(
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = size * 0.015
                ..strokeJoin = StrokeJoin.round
                ..color = AppTheme.brandGreen,
            ),
          ),
        ],
      ),
    );
  }
}
