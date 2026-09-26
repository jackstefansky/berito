import 'package:berito/model/model.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/widgets.dart';

import 'day_header.dart';

/// Classes grouped by day, each day with its own small header.
class SchedulePanel extends StatelessWidget {
  const SchedulePanel({super.key, required this.classes});

  final List<ClassSession> classes;

  @override
  Widget build(BuildContext context) {
    DateTime dayOf(ClassSession s) =>
        DateTime(s.start.year, s.start.month, s.start.day);

    final children = <Widget>[];
    DateTime? currentDay;
    for (final session in classes) {
      final day = dayOf(session);
      if (day != currentDay) {
        currentDay = day;
        children.add(DayHeader(day: day));
      }
      children
        ..add(ClassCard(session: session))
        ..add(const SizedBox(height: 8));
    }
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      children: children,
    );
  }
}
