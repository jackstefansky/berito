import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../announcement_repository.dart';

@LazySingleton(as: AnnouncementRepository)
class MockAnnouncementRepository implements AnnouncementRepository {
  @override
  Future<List<Announcement>> getAnnouncements() async {
    final now = DateTime.now();
    return [
      Announcement(
        id: 'an1',
        title: 'Zmiana godzin pracy dziekanatu',
        description:
            'Od przyszłego tygodnia dziekanat jest czynny od poniedziałku do '
            'piątku w godzinach 9:00–15:00.',
        publishedAt: now.subtract(const Duration(days: 1)),
      ),
      Announcement(
        id: 'an2',
        title: 'Zapisy na przedmioty do wyboru',
        description:
            'Rozpoczęły się zapisy na przedmioty do wyboru w semestrze '
            'letnim. Zapisy trwają do końca miesiąca.',
        publishedAt: now.subtract(const Duration(days: 3)),
      ),
      Announcement(
        id: 'an3',
        title: 'Dni otwarte biblioteki',
        description:
            'Zapraszamy na szkolenie z korzystania z zasobów cyfrowych '
            'biblioteki uniwersyteckiej.',
        publishedAt: now.subtract(const Duration(days: 6)),
      ),
    ];
  }
}
