import 'package:design_system/src/theme/data/data.dart';
import 'package:flutter/material.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  final AppColors colors;
  final AppTypography typography;
  final AppDimensions dimensions;

  AppTheme({
    required this.colors,
    required this.typography,
    required this.dimensions,
  });

  factory AppTheme.regular() {
    return AppTheme(
      colors: AppColors.regular(),
      typography: AppTypography.regular(),
      dimensions: AppDimensions.regular(),
    );
  }

  @override
  ThemeExtension<AppTheme> copyWith(
      {AppColors? colors,
      AppTypography? typography,
      AppDimensions? dimensions}) {
    return AppTheme(
      colors: colors ?? this.colors,
      typography: typography ?? this.typography,
      dimensions: dimensions ?? this.dimensions,
    );
  }

  @override
  ThemeExtension<AppTheme> lerp(
      covariant ThemeExtension<AppTheme>? other, double t) {
    return this;
  }

  ThemeData buildTheme() {
    return ThemeData(
        extensions: <ThemeExtension<dynamic>>[this],
        colorScheme: ColorScheme.fromSeed(
          seedColor: colors.primary,
          primary: colors.primary,
        ),
        textTheme: TextTheme(
          titleLarge: typography.titleLarge,
          titleMedium: typography.titleMedium,
          titleSmall: typography.titleSmall,
        ));
  }

  factory AppTheme.of(BuildContext context) {
    return Theme.of(context).extension<AppTheme>() ?? AppTheme.regular();
  }
}
