import 'package:berito/core/theme/theme.dart';
import 'package:berito/model/model.dart';
import 'package:flutter/material.dart';

import 'building_style.dart';

/// Picture of the building where the class takes place (or an "online"
/// banner when the class has no building).
class ClassHero extends StatelessWidget {
  const ClassHero({super.key, required this.session});

  final ClassSession session;

  static const height = 220.0;

  @override
  Widget build(BuildContext context) {
    final building = session.building;
    if (building == null) return _Placeholder(online: session.isOnline);
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            building.imageUrl,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, progress) =>
                progress == null ? child : const _Placeholder(loading: true),
            errorBuilder: (context, error, stack) => const _Placeholder(),
          ),
          Positioned(
            left: 16,
            bottom: 12,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: Text(
                  building.label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({this.online = false, this.loading = false});

  final bool online;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ClassHero.height,
      width: double.infinity,
      color: AppTheme.brandGreen.withValues(alpha: 0.25),
      alignment: Alignment.center,
      child: loading
          ? const CircularProgressIndicator.adaptive()
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  online ? Icons.videocam_outlined : Icons.apartment_outlined,
                  size: 48,
                  color: AppTheme.brandGreen,
                ),
                if (online)
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'Zajęcia online',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
              ],
            ),
    );
  }
}
