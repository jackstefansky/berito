import 'package:berito/model/model.dart';
import 'package:flutter/material.dart';

/// Presentation of [AssignmentType]: label, own color and icon.
extension AssignmentTypeStyle on AssignmentType {
  String get label => switch (this) {
        AssignmentType.project => 'Projekt',
        AssignmentType.task => 'Zadanie',
        AssignmentType.report => 'Sprawozdanie',
        AssignmentType.quiz => 'Kolokwium',
      };

  Color get color => switch (this) {
        AssignmentType.project => const Color(0xFF3B82F6),
        AssignmentType.task => const Color(0xFF10B981),
        AssignmentType.report => const Color(0xFF8B5CF6),
        AssignmentType.quiz => const Color(0xFFEF4444),
      };

  IconData get icon => switch (this) {
        AssignmentType.project => Icons.folder_outlined,
        AssignmentType.task => Icons.task_alt_outlined,
        AssignmentType.report => Icons.description_outlined,
        AssignmentType.quiz => Icons.quiz_outlined,
      };
}
