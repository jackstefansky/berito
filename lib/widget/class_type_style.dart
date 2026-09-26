import 'package:berito/model/model.dart';
import 'package:flutter/material.dart';

/// Presentation of [ClassType]: label, own color and icon.
extension ClassTypeStyle on ClassType {
  String get label => switch (this) {
        ClassType.lecture => 'Wykład',
        ClassType.laboratory => 'Laboratoria',
        ClassType.conversatory => 'Konwersatorium',
      };

  Color get color => switch (this) {
        ClassType.lecture => const Color(0xFF3B82F6),
        ClassType.laboratory => const Color(0xFFF59E0B),
        ClassType.conversatory => const Color(0xFF8B5CF6),
      };

  IconData get icon => switch (this) {
        ClassType.lecture => Icons.menu_book_outlined,
        ClassType.laboratory => Icons.science_outlined,
        ClassType.conversatory => Icons.forum_outlined,
      };
}
