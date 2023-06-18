import 'package:cryptocurrency_ranking_app/view/_product/constants/string/project_strings.dart';
import 'package:flutter/material.dart';

class ProjectLocales {
  const ProjectLocales._();
  static final Map<Locale, String> localesMap = {
    const Locale(ProjectStrings.localeLangEnglish, ProjectStrings.localeCountryEnglish): ProjectStrings.english,
    const Locale(ProjectStrings.localeLangTurkish, ProjectStrings.localeCountryTurkish): ProjectStrings.turkish,
  };
}
