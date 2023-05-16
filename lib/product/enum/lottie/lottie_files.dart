enum Lottiefiles {
  loading('loading');

  const Lottiefiles(this.value);
  final String value;

  String get path => 'assets/animation/$value.json';
}
