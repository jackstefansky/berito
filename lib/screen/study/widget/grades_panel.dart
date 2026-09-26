import 'package:berito/model/model.dart';
import 'package:flutter/widgets.dart';

import 'grade_card.dart';

class GradesPanel extends StatelessWidget {
  const GradesPanel({super.key, required this.grades});

  final List<Grade> grades;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      itemCount: grades.length,
      separatorBuilder: (_, _) => const SizedBox(height: 8),
      itemBuilder: (context, i) => GradeCard(grade: grades[i]),
    );
  }
}
