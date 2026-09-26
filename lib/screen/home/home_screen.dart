import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/core/auth/auth.dart';
import 'package:berito/model/model.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      useFixedToolbar: false,
      appBar: AdaptiveAppBar(
        title: 'Home',
        useNativeToolbar: true,
        actions: [
          AdaptiveAppBarAction(
            iosSymbol: 'rectangle.portrait.and.arrow.right',
            icon: Icons.logout,
            label: 'Sign out',
            onPressed: () => context.read<AuthCubit>().signOut(),
          ),
        ],
      ),
      body: AsyncContent<HomeCubit, Student>(
        builder: (context, student) => ListView(
          // iOS 26 draws the body under the native toolbar, so start below it.
          padding: EdgeInsets.fromLTRB(
            16,
            PlatformInfo.isIOS26OrHigher()
                ? MediaQuery.paddingOf(context).top + 16
                : 16,
            16,
            16,
          ),
          children: [
            AdaptiveCard(
              padding: const EdgeInsets.all(16),
              child: Text('Welcome, ${student.firstName}!'),
            ),
          ],
        ),
      ),
    );
  }
}
