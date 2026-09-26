import 'package:berito/core/util/util.dart';
import 'package:flutter/cupertino.dart';

/// Small header above the classes of one day.
class DayHeader extends StatelessWidget {
  const DayHeader({super.key, required this.day});

  final DateTime day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Text(
        PolishDate.dayHeader(day),
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w700,
          color: CupertinoColors.secondaryLabel.resolveFrom(context),
        ),
      ),
    );
  }
}
