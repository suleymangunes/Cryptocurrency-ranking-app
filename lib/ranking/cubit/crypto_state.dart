// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';

abstract class CryptoState {
  final CryptoStatus status;
  const CryptoState(this.status);
}

enum CryptoStatus {
  initial,
  loading,
  completed,
  error,
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
