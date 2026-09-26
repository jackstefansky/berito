import 'package:berito/model/model.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/widgets.dart';

import 'affair_card.dart';

class AffairsSection extends StatelessWidget {
  const AffairsSection({super.key, required this.affairs});

  final List<Affair> affairs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SectionHeader('Moje sprawy'),
        for (final affair in affairs.take(3)) ...[
          AffairCard(affair: affair),
          const SizedBox(height: 12),
        ],
        const ShowMoreButton(),
      ],
    );
  }
}
