// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriceListModelImpl _$$PriceListModelImplFromJson(Map<String, dynamic> json) =>
    _$PriceListModelImpl(
      items: (json['data'] as List<dynamic>)
          .map((e) => PriceItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PriceListModelImplToJson(
        _$PriceListModelImpl instance) =>
    <String, dynamic>{
      'data': instance.items,
    };
