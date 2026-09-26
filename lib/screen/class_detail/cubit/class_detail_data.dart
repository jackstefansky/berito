import 'package:berito/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_detail_data.freezed.dart';

@freezed
abstract class ClassDetailData with _$ClassDetailData {
  const factory ClassDetailData({
    required ClassSession session,
    required List<Assignment> assignments,
  }) = _ClassDetailData;
}
