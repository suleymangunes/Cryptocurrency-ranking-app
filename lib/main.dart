import 'package:cryptocurrency_ranking_app/app.dart';
import 'package:cryptocurrency_ranking_app/cubit_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = CubitObserver();
  runApp(const MyApp());
}
