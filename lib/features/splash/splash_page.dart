import 'package:employees_list/features/employees/views/pages/employees_page.dart';
import 'package:employees_list/features/splash/viewmodels/splash_cubit.dart';
import 'package:employees_list/features/splash/viewmodels/splash_state.dart';
import 'package:employees_list/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: BlocListener<SplashCubit, SplashState>(
        bloc: getIt.get<SplashCubit>()..init(),
        child: Center(
          child: Image.asset('assets/images/logo.png'),
        ),
        listener: (context, state) {
          if (state.isLoaded) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => EmployeesPage()));
          }
        },
      ),
    );
  }
}
