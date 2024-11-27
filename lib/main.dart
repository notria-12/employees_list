import 'package:employees_list/features/splash/splash_page.dart';
import 'package:employees_list/injection.dart';
import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';

void main() {
  setupDependecies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.regular();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Employees',
      theme: theme.buildTheme(),
      home: SplashPage(),
    );
  }
}
