import 'package:cryptocurrency_ranking_app/ranking/cubit/crypto_state.dart';
import 'package:cryptocurrency_ranking_app/ranking/service/fetch_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoCubit extends Cubit<CryptoState> {
  final CryptoRepository _cryptoRepository;
  CryptoCubit(this._cryptoRepository) : super(CryptoInitial());

  Future<void> ranking() async {
    try {
      emit(CryptoLoading());
      await Future.delayed(const Duration(seconds: 2));
      // final response = ["a", "a"];
      var response = await _cryptoRepository.fetchData();
      emit(CryptoCompleted(response));
    } catch (e) {
      emit(CryptoError());
    }
  }
}
