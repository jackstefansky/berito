import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import 'api_client.dart';

@lazySingleton
class StudentRemoteDataSource {
  StudentRemoteDataSource(this._api);

  final ApiClient _api;

  Future<Student> getCurrentStudent() async {
    final json = await _api.getJson('/students/me') as Map<String, dynamic>;
    return Student(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      indexNumber: json['indexNumber'] as String,
      fieldOfStudy: json['fieldOfStudy'] as String,
      semester: json['semester'] as int,
    );
  }
}
