import 'package:employees_list/features/splash/viewmodels/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState.loading());

  void init() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(SplashState.success());
  }
}
