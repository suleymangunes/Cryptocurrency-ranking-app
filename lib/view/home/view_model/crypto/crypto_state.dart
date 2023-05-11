import 'package:flutter/foundation.dart';
import 'package:cryptocurrency_ranking_app/product/enum/crypto/crypto_enums.dart';

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

class CryptoCompleted extends CryptoState {
  CryptoCompleted(this.response) : super(CryptoStatus.completed);
  final List<dynamic> response;

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
