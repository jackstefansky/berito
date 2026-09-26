enum Building {
  a,
  b,
  c;

  /// `B-204` -> [Building.b]; null when the room has no known building.
  static Building? fromRoom(String room) => switch (room.trim().toUpperCase()) {
        final r when r.startsWith('A') => Building.a,
        final r when r.startsWith('B') => Building.b,
        final r when r.startsWith('C') => Building.c,
        _ => null,
      };
}
