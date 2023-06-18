import 'package:equatable/equatable.dart';

class Crypto extends Equatable {
  const Crypto({this.id, this.name, this.symbol, this.slug, this.quote});
  factory Crypto.fromJson(Map<String, dynamic> json) {
    final int id = json['id'];
    final String name = json['name'];
    final String symbol = json['symbol'];
    final String slug = json['slug'];
    final Quote quote = Quote.fromJson(json['quote']);
    return Crypto(id: id, name: name, quote: quote, slug: slug, symbol: symbol);
  }
  final int? id;
  final String? name;
  final String? symbol;
  final String? slug;
  final Quote? quote;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['symbol'] = symbol;
    data['slug'] = slug;
    if (quote != null) {
      data['quote'] = quote!.toJson();
    }
    return data;
  }

  @override
  List<Object?> get props => [id];
}

class Quote {
  Quote({this.uSD});
  Quote.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'] != null ? USD.fromJson(json['USD'] as Map<String, dynamic>) : null;
  }
  USD? uSD;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (uSD != null) {
      data['USD'] = uSD!.toJson();
    }
    return data;
  }
}

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
  factory USD.fromJson(Map<String, dynamic> json) {
    final price = json['price'];
    final volume24h = json['volume_24h'];
    final volumeChange24h = json['volume_24h'];
    final percentChange1h = json['percent_change_1h'];
    final percentChange24h = json['percent_change_24h'];
    final percentChange7d = json['percent_change_7d'];
    final percentChange30d = json['percent_change_30d'];
    final percentChange60d = json['percent_change_60d'];
    final percentChange90d = json['percent_change_90d'];
    final marketCap = json['market_cap'];
    final marketCapDominance = json['market_cap_dominance'];
    final fullyDilutedMarketCap = json['fully_diluted_market_cap'];
    return USD(
      price: price,
      volume24h: volume24h,
      volumeChange24h: volumeChange24h,
      percentChange1h: percentChange1h,
      percentChange24h: percentChange24h,
      percentChange7d: percentChange7d,
      percentChange30d: percentChange30d,
      percentChange60d: percentChange60d,
      percentChange90d: percentChange90d,
      marketCap: marketCap,
      marketCapDominance: marketCapDominance,
      fullyDilutedMarketCap: fullyDilutedMarketCap,
    );
  }
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

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['price'] = price;
    data['volume_24h'] = volume24h;
    data['volume_change_24h'] = volumeChange24h;
    data['percent_change_1h'] = percentChange1h;
    data['percent_change_24h'] = percentChange24h;
    data['percent_change_7d'] = percentChange7d;
    data['percent_change_30d'] = percentChange30d;
    data['percent_change_60d'] = percentChange60d;
    data['percent_change_90d'] = percentChange90d;
    data['market_cap'] = marketCap;
    data['market_cap_dominance'] = marketCapDominance;
    data['fully_diluted_market_cap'] = fullyDilutedMarketCap;
    return data;
  }
}
