import 'package:berito/core/state/state.dart';
import 'package:berito/repository/repository.dart';
import 'package:injectable/injectable.dart';

import 'study_data.dart';

@injectable
class StudyCubit extends DataCubit<StudyData> {
  StudyCubit(ScheduleRepository schedule, GradeRepository grades)
      : super(() async {
          final (classes, gradeList) =
              await (schedule.getSchedule(), grades.getGrades()).wait;
          return StudyData(schedule: classes, grades: gradeList);
        });
}
