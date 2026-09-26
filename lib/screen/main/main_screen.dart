import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Hosts the bottom navigation bar around the five top-level tabs.
class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final native = PlatformInfo.isIOS26OrHigher();
    return AdaptiveScaffold(
      bottomNavigationBar: AdaptiveBottomNavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onTap: (index) => navigationShell.goBranch(
          index,
          // Tapping the active tab returns to its root.
          initialLocation: index == navigationShell.currentIndex,
        ),
        items: [
          AdaptiveNavigationDestination(
            icon: native ? 'calendar' : Icons.calendar_today_outlined,
            label: 'Dziś',
          ),
          AdaptiveNavigationDestination(
            icon: native ? 'graduationcap.fill' : Icons.school_outlined,
            label: 'Studia',
          ),
          AdaptiveNavigationDestination(
            icon: native ? 'checkmark.circle.fill' : Icons.check_circle_outline,
            label: 'Zadania',
          ),
          AdaptiveNavigationDestination(
            icon: native ? 'backpack.fill' : Icons.backpack_outlined,
            label: 'Plecak',
          ),
          AdaptiveNavigationDestination(
            icon: native ? 'ellipsis' : Icons.more_horiz,
            label: 'Więcej',
          ),
        ],
      ),
      body: navigationShell,
    );
  }
}
