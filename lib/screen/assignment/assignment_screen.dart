import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/model/model.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/widgets.dart';

import 'cubit/cubit.dart';
import 'widget/widget.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(title: 'Zadania'),
      body: AsyncContent<AssignmentCubit, List<Assignment>>(
        builder: (context, assignments) => ListView.separated(
          // iOS 26 draws the body under the native toolbar, so start below it.
          padding: EdgeInsets.fromLTRB(
            16,
            PlatformInfo.isIOS26OrHigher()
                ? MediaQuery.paddingOf(context).top
                : 16,
            16,
            16,
          ),
          itemCount: assignments.length,
          separatorBuilder: (_, _) => const SizedBox(height: 8),
          itemBuilder: (context, i) =>
              AssignmentCard(assignment: assignments[i]),
        ),
      ),
    );
  }
}
