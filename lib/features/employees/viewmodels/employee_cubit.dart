import 'package:employees_list/features/employees/repositories/employee_repository.dart';
import 'package:employees_list/features/employees/viewmodels/employee_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeCubit extends Cubit<EmployeeState> {
  final EmployeeRepository _repository;
  EmployeeCubit(this._repository) : super(EmployeeState());

  getAllEmployees() async {
    try {
      emit(EmployeeState.loading(currentState: state));
      final employees = await _repository.fetchEmployees();
      emit(EmployeeState.fetchSuccess(
          currentState: state, employees: employees));
    } catch (e) {
      emit(EmployeeState.fetchFailure(
          currentState: state, errorMessage: e.toString()));
    }
  }
}
