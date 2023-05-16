import 'package:cryptocurrency_ranking_app/core/extensions/context/context_extension.dart';
import 'package:flutter/material.dart';

extension SizedSpaceBoxExtension on BuildContext {
  SizedBox get normalSpace => SizedBox(height: height * 0.1);
  SizedBox get normalSizedBox => SizedBox(height: height * 0.03);
}
