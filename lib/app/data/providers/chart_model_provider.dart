import 'package:get/get.dart';

import '../models/chart_model_model.dart';

class ChartModelProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return ChartModel.fromJson(map);
      if (map is List)
        return map.map((item) => ChartModel.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<ChartModel?> getChartModel(int id) async {
    final response = await get('chartmodel/$id');
    return response.body;
  }

  Future<Response<ChartModel>> postChartModel(ChartModel chartmodel) async =>
      await post('chartmodel', chartmodel);
  Future<Response> deleteChartModel(int id) async =>
      await delete('chartmodel/$id');
}
