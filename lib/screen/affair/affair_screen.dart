import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/model/model.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/widgets.dart';

import 'cubit/cubit.dart';

class AffairScreen extends StatelessWidget {
  const AffairScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(title: 'Moje sprawy'),
      body: AsyncContent<AffairCubit, List<Affair>>(
        builder: (context, items) => ListView.separated(
          // iOS 26 draws the body under the native toolbar, so start below it.
          padding: EdgeInsets.fromLTRB(
            16,
            PlatformInfo.isIOS26OrHigher()
                ? MediaQuery.paddingOf(context).top
                : 16,
            16,
            16,
          ),
          itemCount: items.length,
          separatorBuilder: (_, _) => const SizedBox(height: 8),
          itemBuilder: (context, i) => AffairCard(affair: items[i]),
        ),
      ),
    );
  }
}
