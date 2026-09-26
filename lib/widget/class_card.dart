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
                  session.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InfoRow(
                  icon: Icons.schedule,
                  text: '${type.label} · ${PolishDate.day(session.start)} · '
                      '${PolishDate.timeRange(session.start, session.end)}',
                  color: type.color,
                ),
                InfoRow(
                  icon: session.isOnline
                      ? Icons.videocam_outlined
                      : Icons.place_outlined,
                  text: '${session.lecturer} · '
                      '${session.isOnline ? session.meetingUrl! : 'Sala ${session.room}'}',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
