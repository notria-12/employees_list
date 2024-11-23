import 'package:employees_list/features/splash/viewmodels/splash_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependecies() {
  getIt.registerFactory(() => SplashCubit());
}
