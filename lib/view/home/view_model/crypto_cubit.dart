// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cryptocurrency_ranking_app/view/_product/service/i_crypto_data_source.dart';
import 'package:cryptocurrency_ranking_app/view/home/view_model/crypto_state.dart';

class CryptoCubit extends Cubit<CryptoState> {
  CryptoCubit(this._cryptoDataSource) : super(CryptoInitial());
  final ICryptoDataSource _cryptoDataSource;

  Future<void> ranking() async {
    try {
      emit(CryptoLoading());
      final response = await _cryptoDataSource.fetchData();
      emit(CryptoCompleted(response));
    } catch (e) {
      emit(CryptoError());
    }
  }
}
