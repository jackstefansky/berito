import 'package:berito/model/model.dart';
import 'package:flutter/material.dart';

/// Presentation of [AffairType]: own color and icon.
extension AffairTypeStyle on AffairType {
  Color get color => switch (this) {
        AffairType.payment => const Color(0xFF10B981),
        AffairType.exam => const Color(0xFFEF4444),
        AffairType.assignment => const Color(0xFFF59E0B),
      };

  IconData get icon => switch (this) {
        AffairType.payment => Icons.payments_outlined,
        AffairType.exam => Icons.edit_note_outlined,
        AffairType.assignment => Icons.assignment_outlined,
      };
}
