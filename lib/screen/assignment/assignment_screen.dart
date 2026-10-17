import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/model/model.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(title: 'Zadania'),
      body: AsyncContent<AssignmentCubit, List<Assignment>>(
        builder: (context, assignments) => CustomScrollView(
          // Bouncing so the pull works on Android too.
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            // iOS 26 draws the body under the native toolbar, so start below
            // it; the refresh control must come after this inset to be visible.
            if (PlatformInfo.isIOS26OrHigher())
              SliverToBoxAdapter(
                child: SizedBox(height: MediaQuery.paddingOf(context).top),
              ),
            CupertinoSliverRefreshControl(
              onRefresh: context.read<AssignmentCubit>().refresh,
            ),
            SliverPadding(
              padding: EdgeInsets.fromLTRB(
                16,
                PlatformInfo.isIOS26OrHigher() ? 0 : 16,
                16,
                16,
              ),
              sliver: SliverList.separated(
                itemCount: assignments.length,
                separatorBuilder: (_, _) => const SizedBox(height: 8),
                itemBuilder: (context, i) =>
                    AssignmentCard(assignment: assignments[i]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
