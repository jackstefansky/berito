import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/core/util/util.dart';
import 'package:berito/model/model.dart';
import 'package:flutter/material.dart';

import 'class_type_style.dart';
import 'info_row.dart';

class ClassCard extends StatelessWidget {
  const ClassCard({super.key, required this.session});

  final ClassSession session;

  @override
  Widget build(BuildContext context) {
    final type = session.type;
    return AdaptiveCard(
      padding: const EdgeInsets.all(14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: type.color.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(type.icon, color: type.color),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  session.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  type.label,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: type.color,
                  ),
                ),
                const SizedBox(height: 4),
                InfoRow(
                  icon: Icons.schedule,
                  text: '${PolishDate.day(session.start)} · '
                      '${PolishDate.timeRange(session.start, session.end)}',
                ),
                InfoRow(icon: Icons.person_outline, text: session.lecturer),
                InfoRow(
                  icon: session.isOnline
                      ? Icons.videocam_outlined
                      : Icons.place_outlined,
                  text: session.isOnline
                      ? session.meetingUrl!
                      : 'Sala ${session.room}',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
