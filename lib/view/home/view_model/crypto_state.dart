import 'package:cryptocurrency_ranking_app/product/enum/crypto/crypto_enums.dart';
import 'package:equatable/equatable.dart';

abstract class CryptoState {
  const CryptoState(this.status);
  final CryptoStatus status;
}

class CryptoInitial extends CryptoState {
  CryptoInitial() : super(CryptoStatus.initial);
}

class CryptoLoading extends CryptoState {
  CryptoLoading() : super(CryptoStatus.loading);
}

class CryptoCompleted extends CryptoState with EquatableMixin {
  CryptoCompleted(this.response) : super(CryptoStatus.completed);
  final List<dynamic> response;

  @override
  List<Object?> get props => [response];
}

class CryptoError extends CryptoState {
  CryptoError() : super(CryptoStatus.error);
}
