import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/cupertino.dart';

import 'cubit/cubit.dart';
import 'widget/widget.dart';

class ClassDetailScreen extends StatelessWidget {
  const ClassDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(),
      body: AsyncContent<ClassDetailCubit, ClassDetailData>(
        builder: (context, data) => ListView(
          padding: const EdgeInsets.only(bottom: 16),
          children: [
            // At the very top; on iOS 26 it runs under the glass toolbar.
            ClassHero(session: data.session),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClassInfoCard(session: data.session),
                  const SizedBox(height: 24),
                  const SectionHeader('Nadchodzące zadania'),
                  if (data.assignments.isEmpty)
                    Text(
                      'Brak nadchodzących zadań dla tych zajęć.',
                      style: TextStyle(
                        color: CupertinoColors.secondaryLabel.resolveFrom(
                          context,
                        ),
                      ),
                    ),
                  for (final assignment in data.assignments) ...[
                    AssignmentCard(assignment: assignment),
                    const SizedBox(height: 8),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
