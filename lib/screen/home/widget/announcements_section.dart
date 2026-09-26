import 'package:berito/model/model.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/widgets.dart';

import 'announcement_card.dart';

class AnnouncementsSection extends StatelessWidget {
  const AnnouncementsSection({super.key, required this.announcements});

  final List<Announcement> announcements;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SectionHeader('Komunikacja'),
        for (final announcement in announcements.take(3)) ...[
          AnnouncementCard(announcement: announcement),
          const SizedBox(height: 12),
        ],
        const ShowMoreButton(),
      ],
    );
  }
}
