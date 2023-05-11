import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer';

class CubitObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('$bloc, $change');
  }
}
