import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cryptocurrency_ranking_app/view/home/service/crypto/crypto_repository.dart';
import 'package:cryptocurrency_ranking_app/view/home/view_model/crypto/crypto_state.dart';

class CryptoCubit extends Cubit<CryptoState> {
  CryptoCubit(this._cryptoRepository) : super(CryptoInitial());
  final CryptoRepository _cryptoRepository;

  Future<void> ranking() async {
    try {
      emit(CryptoLoading());
      final response = await _cryptoRepository.fetchData();
      emit(CryptoCompleted(response));
    } catch (e) {
      emit(CryptoError());
    }
  }
}
