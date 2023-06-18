import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'crypto.g.dart';

@JsonSerializable()
class Crypto extends Equatable {
  const Crypto({this.id, this.name, this.symbol, this.slug, this.quote});

  final int? id;
  final String? name;
  final String? symbol;
  final String? slug;
  final Quote? quote;

  factory Crypto.fromJson(Map<String, dynamic> json) => _$CryptoFromJson(json);
  Map<String, dynamic> toJson() => _$CryptoToJson(this);

  @override
  List<Object?> get props => [id, quote];
}

@JsonSerializable()
class Quote {
  const Quote({this.uSD});
  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);
  final USD? uSD;

  Map<String, dynamic> toJson() => _$QuoteToJson(this);
}

@JsonSerializable()
class USD {
  USD({
    this.price,
    this.volume24h,
    this.volumeChange24h,
    this.percentChange1h,
    this.percentChange24h,
    this.percentChange7d,
    this.percentChange30d,
    this.percentChange60d,
    this.percentChange90d,
    this.marketCap,
    this.marketCapDominance,
    this.fullyDilutedMarketCap,
  });
  factory USD.fromJson(Map<String, dynamic> json) => _$USDFromJson(json);
  final num? price;
  final num? volume24h;
  final num? volumeChange24h;
  final num? percentChange1h;
  final num? percentChange24h;
  final num? percentChange7d;
  final num? percentChange30d;
  final num? percentChange60d;
  final num? percentChange90d;
  final num? marketCap;
  final num? marketCapDominance;
  final num? fullyDilutedMarketCap;

  Map<String, dynamic> toJson() => _$USDToJson(this);
}
