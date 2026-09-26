import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/core/util/util.dart';
import 'package:berito/model/model.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/material.dart';

import 'grade_style.dart';

class GradeCard extends StatelessWidget {
  const GradeCard({super.key, required this.grade});

  final Grade grade;

  @override
  Widget build(BuildContext context) {
    final color = grade.color;
    return AdaptiveCard(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              grade.label,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: color,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  grade.courseName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InfoRow(
                  icon: Icons.event_outlined,
                  text: PolishDate.shortDate(grade.date),
                ),
                InfoRow(icon: Icons.person_outline, text: grade.lecturer),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
