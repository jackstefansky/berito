import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/core/auth/auth.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'widget/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(
        title: 'Dziś',
        actions: [
          AdaptiveAppBarAction(
            iosSymbol: 'rectangle.portrait.and.arrow.right',
            icon: Icons.logout,
            label: 'Wyloguj się',
            onPressed: () => context.read<AuthCubit>().signOut(),
          ),
        ],
      ),
      body: AsyncContent<HomeCubit, HomeData>(
        builder: (context, data) => ListView(
          // iOS 26 draws the body under the native toolbar, so start below it.
          padding: EdgeInsets.fromLTRB(
            16,
            PlatformInfo.isIOS26OrHigher()
                ? MediaQuery.paddingOf(context).top
                : 16,
            16,
            16,
          ),
          children: [
            GreetingHeader(name: data.student.firstName),
            const SizedBox(height: 24),
            UpcomingClassesSection(classes: data.upcomingClasses),
            const SizedBox(height: 24),
            AffairsSection(affairs: data.affairs),
            const SizedBox(height: 24),
            AnnouncementsSection(announcements: data.announcements),
          ],
        ),
      ),
    );
  }
}
