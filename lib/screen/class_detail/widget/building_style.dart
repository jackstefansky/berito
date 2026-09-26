import 'package:berito/model/model.dart';

/// Presentation of [Building]: name and photo.
extension BuildingStyle on Building {
  String get label => switch (this) {
        Building.a => 'Budynek A',
        Building.b => 'Budynek B',
        Building.c => 'Budynek C',
      };

  String get imageUrl => switch (this) {
        Building.a =>
          'https://www.merito.pl/gdansk/sites/gdansk/files/2025-10/rozbudowa_kampusu-4.jpg',
        Building.b => 'https://photos.wikimapia.org/p/00/06/19/79/24_full.jpg',
        Building.c =>
          'https://www.merito.pl/gdansk/sites/gdansk/files/styles/og_image/public/2025-08/gdansk-merito-dron-grunwaldzka-budynek.jpg?itok=E_1bhzwj',
      };
}
