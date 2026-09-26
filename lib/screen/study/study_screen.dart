import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/core/theme/theme.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/widgets.dart';

import 'cubit/cubit.dart';
import 'widget/widget.dart';

class StudyScreen extends StatefulWidget {
  const StudyScreen({super.key});

  @override
  State<StudyScreen> createState() => _StudyScreenState();
}

class _StudyScreenState extends State<StudyScreen> {
  static const _tabs = ['Harmonogram', 'Oceny'];
  int _tab = 0;

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(title: 'Studia'),
      body: Column(
        children: [
          Padding(
            // iOS 26 draws the body under the native toolbar, so start below it.
            padding: EdgeInsets.fromLTRB(
              16,
              PlatformInfo.isIOS26OrHigher()
                  ? MediaQuery.paddingOf(context).top
                  : 12,
              16,
              8,
            ),
            child: AdaptiveSegmentedControl(
              labels: _tabs,
              selectedIndex: _tab,
              color: AppTheme.brandGreen,
              onValueChanged: (index) => setState(() => _tab = index),
            ),
          ),
          Expanded(
            child: AsyncContent<StudyCubit, StudyData>(
              builder: (context, data) => _tab == 0
                  ? SchedulePanel(classes: data.schedule)
                  : GradesPanel(grades: data.grades),
            ),
          ),
        ],
      ),
    );
  }
}
