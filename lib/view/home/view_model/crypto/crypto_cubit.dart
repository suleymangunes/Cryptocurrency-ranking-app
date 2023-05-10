import 'package:cryptocurrency_ranking_app/view/home/model/crypto.dart';
import 'package:cryptocurrency_ranking_app/view/home/service/crypto_repository.dart';
import 'package:cryptocurrency_ranking_app/view/home/view_model/crypto/crypto_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoCubit extends Cubit<CryptoState> {
  final CryptoRepository _cryptoRepository;
  CryptoCubit(this._cryptoRepository) : super(CryptoInitial());

  Future<void> ranking() async {
    try {
      emit(CryptoLoading());
      List<Crypto> response = await _cryptoRepository.fetchData();
      emit(CryptoCompleted(response));
    } catch (e) {
      emit(CryptoError());
    }
  }
}
