import 'package:flutter/material.dart';
import 'package:slt_assesment/src/features/price_list/model/price_item_model.dart';
import 'package:slt_assesment/src/features/price_list/repository/price_list_repository.dart';

/// A class that many Widgets can interact with to read price list
class PriceProvider with ChangeNotifier {
  PriceProvider(PriceListRepository repository) : _repository = repository {
    collectPrice();
  }

  final PriceListRepository _repository;
  List<PriceItemModel> _items = [];

  List<PriceItemModel> get items => _items;

  Future<void> collectPrice({int offset = 0}) async {
    final priceList = await _repository.priceList(offset: offset);
    if (offset > 0) {
      _items += priceList.items;
    } else {
      _items = priceList.items;
    }
    notifyListeners();
  }
}
