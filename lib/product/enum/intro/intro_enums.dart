enum IntroEnums {
  app('app'),
  work('work'),
  commerce('commerce'),
  ;

  const IntroEnums(this.value);

  final String value;

  String get toJson => 'assets/intro/$value.json';
}
