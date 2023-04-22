import 'package:cryptocurrency_ranking_app/product/enum/crypto/crypto_enums.dart';
import 'package:flutter/foundation.dart';

abstract class CryptoState {
  final CryptoStatus status;
  const CryptoState(this.status);
}

class CryptoInitial extends CryptoState {
  CryptoInitial() : super(CryptoStatus.initial);
}

class CryptoLoading extends CryptoState {
  CryptoLoading() : super(CryptoStatus.loading);
}

class CryptoCompleted extends CryptoState {
  final List response;
  CryptoCompleted(this.response) : super(CryptoStatus.completed);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CryptoCompleted && listEquals(other.response, response);
  }

  @override
  int get hashCode => response.hashCode;
}

class CryptoError extends CryptoState {
  CryptoError() : super(CryptoStatus.error);
}
