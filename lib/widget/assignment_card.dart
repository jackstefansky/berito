import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/core/util/util.dart';
import 'package:berito/model/model.dart';
import 'package:flutter/material.dart';

import 'assignment_type_style.dart';
import 'info_row.dart';

class AssignmentCard extends StatelessWidget {
  const AssignmentCard({super.key, required this.assignment});

  final Assignment assignment;

  /// Due within this many days is highlighted as urgent.
  static const _urgentDays = 2;

  @override
  Widget build(BuildContext context) {
    final type = assignment.type;
    final days = PolishDate.daysBetween(DateTime.now(), assignment.dueDate);
    final urgent = days <= _urgentDays;
    return AdaptiveCard(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: type.color.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(type.icon, size: 20, color: type.color),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  assignment.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InfoRow(
                  icon: Icons.menu_book_outlined,
                  text: '${type.label} · ${assignment.courseName}',
                  color: type.color,
                ),
                InfoRow(
                  icon: Icons.event_outlined,
                  text: 'Termin: ${PolishDate.shortDate(assignment.dueDate)}, '
                      '${PolishDate.time(assignment.dueDate)} '
                      '(${PolishDate.relativeDays(days)})',
                  color: urgent ? const Color(0xFFEF4444) : null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
