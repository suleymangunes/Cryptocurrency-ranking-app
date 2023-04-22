import 'package:cryptocurrency_ranking_app/core/init/cubit/crypto/crypto_state.dart';
import 'package:cryptocurrency_ranking_app/view/home/service/crypto_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoCubit extends Cubit<CryptoState> {
  final CryptoRepository _cryptoRepository;
  CryptoCubit(this._cryptoRepository) : super(CryptoInitial());

  Future<void> ranking() async {
    try {
      emit(CryptoLoading());
      var response = await _cryptoRepository.fetchData();
      emit(CryptoCompleted(response));
    } catch (e) {
      print(e);
      emit(CryptoError());
    }
  }
}
