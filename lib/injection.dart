import 'package:dio/dio.dart';
import 'package:employees_list/features/employees/repositories/employee_repository.dart';
import 'package:employees_list/features/employees/viewmodels/employee_cubit.dart';
import 'package:employees_list/features/splash/viewmodels/splash_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependecies() {
  //dio instance
  getIt.registerSingleton<Dio>(
      Dio(
        BaseOptions(baseUrl: 'http://192.168.1.3:3000/'),
      ),
      instanceName: 'Dio');

  getIt.registerLazySingleton(
      () => EmployeeRepository(getIt(instanceName: 'Dio')));

  getIt.registerFactory(() => SplashCubit());
  getIt.registerFactory(() => EmployeeCubit(getIt<EmployeeRepository>()));
}
