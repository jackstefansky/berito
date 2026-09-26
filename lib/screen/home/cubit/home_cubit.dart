import 'package:berito/core/state/state.dart';
import 'package:berito/repository/repository.dart';
import 'package:injectable/injectable.dart';

import 'home_data.dart';

@injectable
class HomeCubit extends DataCubit<HomeData> {
  HomeCubit(
    StudentRepository students,
    ScheduleRepository schedule,
    AffairRepository affairs,
    AnnouncementRepository announcements,
  ) : super(() async {
          final (student, classes, affairList, announcementList) = await (
            students.getCurrentStudent(),
            schedule.getUpcomingClasses(),
            affairs.getAffairs(),
            announcements.getAnnouncements(),
          ).wait;
          return HomeData(
            student: student,
            upcomingClasses: classes,
            affairs: affairList,
            announcements: announcementList,
          );
        });
}
