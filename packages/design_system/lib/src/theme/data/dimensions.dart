class AppDimensions {
  const AppDimensions._({
    required this.xxSmall,
    required this.xSmall,
    required this.small,
    required this.medium,
    required this.large,
    required this.xl,
  });

  /// Set each spacing.
  factory AppDimensions.regular() => const AppDimensions._(
        xxSmall: 4,
        xSmall: 8,
        small: 16,
        medium: 24,
        large: 32,
        xl: 48,
      );

  /// [xxSmall] spacing.
  final double xxSmall;

  /// [xSmall] spacing.
  final double xSmall;

  /// [small] spacing.
  final double small;

  /// [medium] spacing.
  final double medium;

  /// [large] spacing.
  final double large;

  /// [xl] spacing.
  final double xl;
}
