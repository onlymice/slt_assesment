// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriceItemModelImpl _$$PriceItemModelImplFromJson(Map<String, dynamic> json) =>
    _$PriceItemModelImpl(
      id: json['id'] as String? ?? 'id',
      rank: json['rank'] as String? ?? 'rank',
      symbol: json['symbol'] as String? ?? 'symbol',
      name: json['name'] as String? ?? 'name',
      supply: json['supply'] as String? ?? 'supply',
      maxSupply: json['maxSupply'] as String? ?? 'maxSupply',
      marketCapUsd: json['marketCapUsd'] as String? ?? 'marketCapUsd',
      volumeUsd24Hr: json['volumeUsd24Hr'] as String? ?? 'navolumeUsd24Hre',
      priceUsd: json['priceUsd'] as String? ?? 'priceUsd',
      changePercent24Hr:
          json['changePercent24Hr'] as String? ?? 'changePercent24Hr',
      vwap24Hr: json['vwap24Hr'] as String? ?? 'vwap24Hr',
    );

Map<String, dynamic> _$$PriceItemModelImplToJson(
        _$PriceItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'symbol': instance.symbol,
      'name': instance.name,
      'supply': instance.supply,
      'maxSupply': instance.maxSupply,
      'marketCapUsd': instance.marketCapUsd,
      'volumeUsd24Hr': instance.volumeUsd24Hr,
      'priceUsd': instance.priceUsd,
      'changePercent24Hr': instance.changePercent24Hr,
      'vwap24Hr': instance.vwap24Hr,
    };
