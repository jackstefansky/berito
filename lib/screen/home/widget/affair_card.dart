import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/core/util/util.dart';
import 'package:berito/model/model.dart';
import 'package:flutter/material.dart';

import 'affair_type_style.dart';
import 'info_row.dart';

class AffairCard extends StatelessWidget {
  const AffairCard({super.key, required this.affair});

  final Affair affair;

  @override
  Widget build(BuildContext context) {
    final type = affair.type;
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
                  affair.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(affair.description, style: const TextStyle(fontSize: 14)),
                InfoRow(
                  icon: Icons.event_outlined,
                  text: 'Termin: ${PolishDate.shortDate(affair.dueDate)}',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
