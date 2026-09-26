import 'package:berito/core/state/state.dart';
import 'package:berito/repository/repository.dart';
import 'package:injectable/injectable.dart';

import 'class_detail_data.dart';

@injectable
class ClassDetailCubit extends DataCubit<ClassDetailData> {
  ClassDetailCubit(
    ScheduleRepository schedule,
    AssignmentRepository assignments,
    @factoryParam String classId,
  ) : super(() async {
          final session = await schedule.getClass(classId);
          final upcoming = await assignments.getAssignmentsForCourse(
            session.courseId,
          );
          return ClassDetailData(session: session, assignments: upcoming);
        });
}
