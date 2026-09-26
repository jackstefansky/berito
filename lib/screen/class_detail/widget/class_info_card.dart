import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/core/util/util.dart';
import 'package:berito/model/model.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/material.dart';

import 'building_style.dart';
import 'detail_row.dart';

/// All the information about one class.
class ClassInfoCard extends StatelessWidget {
  const ClassInfoCard({super.key, required this.session});

  final ClassSession session;

  @override
  Widget build(BuildContext context) {
    final type = session.type;
    final building = session.building;
    return AdaptiveCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            session.name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 4),
          Text(
            type.label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: type.color,
            ),
          ),
          const SizedBox(height: 8),
          DetailRow(
            icon: Icons.event_outlined,
            label: 'Data',
            value: PolishDate.dayHeader(session.start),
          ),
          DetailRow(
            icon: Icons.schedule,
            label: 'Godziny',
            value: PolishDate.timeRange(session.start, session.end),
          ),
          DetailRow(
            icon: Icons.person_outline,
            label: 'Prowadzący',
            value: session.lecturer,
          ),
          if (session.isOnline)
            DetailRow(
              icon: Icons.videocam_outlined,
              label: 'Link do spotkania',
              value: session.meetingUrl!,
            )
          else ...[
            DetailRow(
              icon: Icons.meeting_room_outlined,
              label: 'Sala',
              value: session.room!,
            ),
            if (building != null)
              DetailRow(
                icon: Icons.apartment_outlined,
                label: 'Budynek',
                value: building.label,
              ),
          ],
        ],
      ),
    );
  }
}
