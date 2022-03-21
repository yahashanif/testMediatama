import 'package:get/get.dart';

import '../models/barang_model_model.dart';

class BarangModelProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return BarangModel.fromJson(map);
      if (map is List)
        return map.map((item) => BarangModel.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<BarangModel?> getBarangModel(int id) async {
    final response = await get('barangmodel/$id');
    return response.body;
  }

  Future<Response<BarangModel>> postBarangModel(
          BarangModel barangmodel) async =>
      await post('barangmodel', barangmodel);
  Future<Response> deleteBarangModel(int id) async =>
      await delete('barangmodel/$id');
}
