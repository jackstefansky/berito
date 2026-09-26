import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/model/model.dart';
import 'package:flutter/widgets.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({super.key, required this.announcement});

  final Announcement announcement;

  @override
  Widget build(BuildContext context) {
    return AdaptiveCard(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            announcement.title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),
          Text(
            announcement.description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
