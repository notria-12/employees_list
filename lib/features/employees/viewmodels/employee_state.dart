import 'package:employees_list/features/employees/models/employee_model.dart';

class EmployeeState {
  final List<EmployeeModel> employees;
  final bool isLoading;
  final String errorMessage;

  EmployeeState(
      {this.isLoading = false,
      this.errorMessage = '',
      this.employees = const []});

  factory EmployeeState.loading({required EmployeeState currentState}) {
    return currentState.copyWith(isLoading: true);
  }

  factory EmployeeState.fetchSuccess(
      {required EmployeeState currentState,
      required List<EmployeeModel> employees}) {
    return currentState.copyWith(isLoading: false, employees: employees);
  }

  factory EmployeeState.fetchFailure(
      {required EmployeeState currentState, required String errorMessage}) {
    return currentState.copyWith(isLoading: false, errorMessage: errorMessage);
  }

  EmployeeState copyWith(
      {bool? isLoading, String? errorMessage, List<EmployeeModel>? employees}) {
    return EmployeeState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      employees: employees ?? this.employees,
    );
  }
}
