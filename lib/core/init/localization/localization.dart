part of '/main.dart';

class LocaleVariables {
  const LocaleVariables._();

  static final List<Locale> _localesList = ProjectLocales.localesMap.keys.toList();
  static const String _localesPath = ProjectStrings.assetTranslation;
  static const Locale _fallBackLocale = Locale(ProjectStrings.localeLangEnglish, ProjectStrings.localeCountryEnglish);

  static Future<void> _init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  }

  static List<DropdownMenuItem<dynamic>> localItems() {
    final menuItems = <DropdownMenuItem<dynamic>>[];
    for (final element in _localesList) {
      menuItems.add(
        DropdownMenuItem(
          value: element,
          child: Text(ProjectLocales.localesMap[element].toString()),
        ),
      );
    }
    return menuItems;
  }
}
