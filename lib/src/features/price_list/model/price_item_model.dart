import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_item_model.freezed.dart';
part 'price_item_model.g.dart';

@freezed
class PriceItemModel with _$PriceItemModel {
  const factory PriceItemModel({
    @Default('id') String id,
    @Default('0') String rank,
    @Default('symbol') String symbol,
    @Default('name') String name,
    @Default('0.00') String supply,
    @Default('0.00') String maxSupply,
    @Default('0.00') String marketCapUsd,
    @Default('0.00') String volumeUsd24Hr,
    @Default('0.00') String priceUsd,
    @Default('0.00') String changePercent24Hr,
    @Default('0.00') String vwap24Hr,
  }) = _PriceItemModel;

  factory PriceItemModel.fromJson(Map<String, dynamic> json) =>
      _$PriceItemModelFromJson(json);
}
