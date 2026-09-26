import 'package:berito/model/model.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/widgets.dart';

class UpcomingClassesSection extends StatelessWidget {
  const UpcomingClassesSection({super.key, required this.classes});

  final List<ClassSession> classes;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SectionHeader('Nadchodzące zajęcia'),
        for (final session in classes.take(3)) ...[
          ClassCard(session: session),
          const SizedBox(height: 12),
        ],
        const ShowMoreButton(),
      ],
    );
  }
}
