// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slt_assesment/src/features/price_list/model/price_item_model.dart';

part 'price_list_model.freezed.dart';
part 'price_list_model.g.dart';

@freezed
class PriceListModel with _$PriceListModel {
  const factory PriceListModel({
    @JsonKey(name: 'data') required List<PriceItemModel> items,
  }) = _PriceListModel;

  factory PriceListModel.fromJson(Map<String, dynamic> json) =>
      _$PriceListModelFromJson(json);
}
