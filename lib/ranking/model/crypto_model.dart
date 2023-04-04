class Crypto {
  int? id;
  String? name;
  String? symbol;
  String? slug;
  Quote? quote;

  Crypto({this.id, this.name, this.symbol, this.slug, this.quote});

  Crypto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    quote = json['quote'] != null ? Quote.fromJson(json['quote']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['symbol'] = symbol;
    data['slug'] = slug;
    if (quote != null) {
      data['quote'] = quote!.toJson();
    }
    return data;
  }
}

class Quote {
  USD? uSD;

  Quote({this.uSD});

  Quote.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'] != null ? USD.fromJson(json['USD']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (uSD != null) {
      data['USD'] = uSD!.toJson();
    }
    return data;
  }
}

class USD {
  double? price;
  double? volume24h;
  double? volumeChange24h;
  double? percentChange1h;
  double? percentChange24h;
  double? percentChange7d;
  double? percentChange30d;
  double? percentChange60d;
  double? percentChange90d;
  double? marketCap;
  double? marketCapDominance;
  double? fullyDilutedMarketCap;

  USD(
      {this.price,
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
      this.fullyDilutedMarketCap});

  USD.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    volume24h = json['volume_24h'];
    volumeChange24h = json['volume_change_24h'];
    percentChange1h = json['percent_change_1h'];
    percentChange24h = json['percent_change_24h'];
    percentChange7d = json['percent_change_7d'];
    percentChange30d = json['percent_change_30d'];
    percentChange60d = json['percent_change_60d'];
    percentChange90d = json['percent_change_90d'];
    marketCap = json['market_cap'];
    marketCapDominance = json['market_cap_dominance'];
    fullyDilutedMarketCap = json['fully_diluted_market_cap'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
