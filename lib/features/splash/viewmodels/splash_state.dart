class SplashState {
  final bool isLoaded;

  SplashState({this.isLoaded = false});

  factory SplashState.loading() {
    return SplashState(isLoaded: false);
  }

  factory SplashState.success() {
    return SplashState(isLoaded: true);
  }
}
