import 'package:berito/core/state/state.dart';
import 'package:berito/model/model.dart';
import 'package:berito/repository/repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AffairCubit extends DataCubit<List<Affair>> {
  AffairCubit(AffairRepository repo) : super(repo.getAffairs);
}
