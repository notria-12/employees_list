import 'package:flutter/material.dart';

const packageName = 'design_system';

class AppTypography extends ThemeExtension<AppTypography> {
  const AppTypography._({
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
  });

  factory AppTypography.regular() => const AppTypography._(
        titleLarge: TextStyle(
          fontFamily: 'Helvetica Neue',
          package: packageName,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Helvetica Neue',
          package: packageName,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Helvetica Neue',
          package: packageName,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      );

  /// Typography scale for large titles.
  final TextStyle titleLarge;

  /// Typography scale for medium titles.
  final TextStyle titleMedium;

  /// Typography scale for small titles.
  final TextStyle titleSmall;

  @override
  ThemeExtension<AppTypography> copyWith() {
    return AppTypography._(
      titleLarge: titleLarge,
      titleMedium: titleMedium,
      titleSmall: titleSmall,
    );
  }

  @override
  ThemeExtension<AppTypography> lerp(
      covariant ThemeExtension<AppTypography>? other, double t) {
    return this;
  }
}
