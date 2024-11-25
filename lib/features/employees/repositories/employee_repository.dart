import 'package:dio/dio.dart';
import 'package:employees_list/features/employees/models/employee_model.dart';

class EmployeeRepository {
  final Dio _client;
  EmployeeRepository(this._client);

  Future<List<EmployeeModel>> fetchEmployees() async {
    try {
      final response = await _client.get('employees');
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => EmployeeModel.fromJson(e))
            .toList();
      } else {
        throw Exception('Failed to fetch employees');
      }
    } catch (e) {
      rethrow;
    }
  }
}
