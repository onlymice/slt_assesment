import 'package:slt_assesment/src/core/network/network.dart';
import 'package:slt_assesment/src/features/price_list/model/price_list_model.dart';

/// A repository that stores and retrieves currency.

class PriceListRepository {
  PriceListRepository(ApiClient client) : _client = client;

  final ApiClient _client;

  Future<PriceListModel> priceList(
      {required int offset, int limit = 15}) async {
    final response = await _client.get(Endpoints.assets,
        queryParameters: {'offset': offset, 'limit': limit});
    return PriceListModel.fromJson(response.data);
  }
}
