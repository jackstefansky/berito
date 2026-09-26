import 'package:berito/model/model.dart';
import 'package:flutter/painting.dart';

/// Presentation of [Grade]: color per grade bucket and Polish formatting.
extension GradeStyle on Grade {
  /// 5 green, 4 yellow, 3 orange, 2 red (halves belong to the lower grade).
  Color get color => switch (value.floor()) {
        >= 5 => const Color(0xFF22C55E),
        4 => const Color(0xFFEAB308),
        3 => const Color(0xFFF97316),
        _ => const Color(0xFFEF4444),
      };

  /// `5`, `4,5`, ...
  String get label => value == value.roundToDouble()
      ? value.toStringAsFixed(0)
      : value.toString().replaceAll('.', ',');
}
