// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Crypto _$CryptoFromJson(Map<String, dynamic> json) => Crypto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
      slug: json['slug'] as String?,
      quote: json['quote'] == null ? null : Quote.fromJson(json['quote'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CryptoToJson(Crypto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'slug': instance.slug,
      'quote': instance.quote,
    };

Quote _$QuoteFromJson(Map<String, dynamic> json) => Quote(
      uSD: json['USD'] == null ? null : USD.fromJson(json['USD'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuoteToJson(Quote instance) => <String, dynamic>{
      'uSD': instance.uSD,
    };

USD _$USDFromJson(Map<String, dynamic> json) => USD(
      price: json['price'] as num?,
      volume24h: json['volume24h'] as num?,
      volumeChange24h: json['volumeChange24h'] as num?,
      percentChange1h: json['percentChange1h'] as num?,
      percentChange24h: json['percentChange24h'] as num?,
      percentChange7d: json['percentChange7d'] as num?,
      percentChange30d: json['percentChange30d'] as num?,
      percentChange60d: json['percentChange60d'] as num?,
      percentChange90d: json['percentChange90d'] as num?,
      marketCap: json['marketCap'] as num?,
      marketCapDominance: json['marketCapDominance'] as num?,
      fullyDilutedMarketCap: json['fullyDilutedMarketCap'] as num?,
    );

Map<String, dynamic> _$USDToJson(USD instance) => <String, dynamic>{
      'price': instance.price,
      'volume24h': instance.volume24h,
      'volumeChange24h': instance.volumeChange24h,
      'percentChange1h': instance.percentChange1h,
      'percentChange24h': instance.percentChange24h,
      'percentChange7d': instance.percentChange7d,
      'percentChange30d': instance.percentChange30d,
      'percentChange60d': instance.percentChange60d,
      'percentChange90d': instance.percentChange90d,
      'marketCap': instance.marketCap,
      'marketCapDominance': instance.marketCapDominance,
      'fullyDilutedMarketCap': instance.fullyDilutedMarketCap,
    };
