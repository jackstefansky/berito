/// Minimal Polish date/time formatting (avoids pulling in `intl` for now).
abstract final class PolishDate {
  static const _weekdays = [
    'pon.',
    'wt.',
    'śr.',
    'czw.',
    'pt.',
    'sob.',
    'niedz.'
  ];
  static const _months = [
    'sty',
    'lut',
    'mar',
    'kwi',
    'maj',
    'cze',
    'lip',
    'sie',
    'wrz',
    'paź',
    'lis',
    'gru',
  ];

  static const _fullWeekdays = [
    'Poniedziałek',
    'Wtorek',
    'Środa',
    'Czwartek',
    'Piątek',
    'Sobota',
    'Niedziela',
  ];

  /// e.g. `Poniedziałek, 5 paź`
  static String dayHeader(DateTime d) =>
      '${_fullWeekdays[d.weekday - 1]}, ${d.day} ${_months[d.month - 1]}';

  /// e.g. `pon., 5 paź`
  static String day(DateTime d) =>
      '${_weekdays[d.weekday - 1]}, ${d.day} ${_months[d.month - 1]}';

  /// e.g. `5 paź`
  static String shortDate(DateTime d) => '${d.day} ${_months[d.month - 1]}';

  /// e.g. `08:00`
  static String time(DateTime d) =>
      '${d.hour.toString().padLeft(2, '0')}:${d.minute.toString().padLeft(2, '0')}';

  /// e.g. `08:00–09:30`
  static String timeRange(DateTime start, DateTime end) =>
      '${time(start)}–${time(end)}';

  /// Whole calendar days from [from] to [to], e.g. 0 = same day.
  static int daysBetween(DateTime from, DateTime to) =>
      DateTime(to.year, to.month, to.day)
          .difference(DateTime(from.year, from.month, from.day))
          .inDays;

  /// `dziś`, `jutro`, `za 5 dni`
  static String relativeDays(int days) => switch (days) {
        <= 0 => 'dziś',
        1 => 'jutro',
        _ => 'za $days dni',
      };
}
