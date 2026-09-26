import 'package:berito/core/state/state.dart';
import 'package:berito/model/model.dart';
import 'package:berito/repository/repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AssignmentCubit extends DataCubit<List<Assignment>> {
  AssignmentCubit(AssignmentRepository repo) : super(repo.getAssignments);
}
