import 'dart:convert';

import 'package:app_test_mediatama/app/data/models/barang_model_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class TestController extends GetxController {
  var barangs = <BarangModel>[].obs;

  String baseUrl = "http://192.168.100.33:8080/api/";

  Future<void> getAllBarang() async {
    barangs.clear();
    String url = baseUrl + 'all';
    final response = await http.get(Uri.parse(url));
    List data = jsonDecode(response.body);
    List<BarangModel> _barangmodelList =
        data.map((e) => BarangModel.fromJson(e)).toList();
    _barangmodelList.map((e) {
      barangs.add(e);
      barangs.refresh();
    }).toList();
  }

  Future<void> inputBarang(String name, int jumlah, int harga) async {
    barangs.clear();
    String url = baseUrl + 'create';
    final response = await http.post(Uri.parse(url),
        headers: {'content-Type': "application/json"},
        body: jsonEncode(<String, dynamic>{
          'nama_barang': name,
          'jumlah': jumlah,
          'harga': harga
        }));
    List data = jsonDecode(response.body);
    List<BarangModel> _barangmodelList =
        data.map((e) => BarangModel.fromJson(e)).toList();
    _barangmodelList.map((e) {
      barangs.add(e);
      barangs.refresh();
    }).toList();
  }
  Future<void> updateBarang(String id,String name, int jumlah, int harga) async {
    barangs.clear();
    String url = baseUrl + 'update';
    final response = await http.post(Uri.parse(url),
        headers: {'content-Type': "application/json"},
        body: jsonEncode(<String, dynamic>{
          'id': id,
          'nama_barang': name,
          'jumlah': jumlah,
          'harga': harga
        }));
    List data = jsonDecode(response.body);
    List<BarangModel> _barangmodelList =
        data.map((e) => BarangModel.fromJson(e)).toList();
    _barangmodelList.map((e) {
      barangs.add(e);
      barangs.refresh();
    }).toList();
  }
  Future<void> deleteBarang(String id) async {
    barangs.clear();
    String url = baseUrl + 'delete';
    final response = await http.post(Uri.parse(url),
        headers: {'content-Type': "application/json"},
        body: jsonEncode(<String, dynamic>{
          'id': id,
        
        }));
    List data = jsonDecode(response.body);
    List<BarangModel> _barangmodelList =
        data.map((e) => BarangModel.fromJson(e)).toList();
    _barangmodelList.map((e) {
      barangs.add(e);
      barangs.refresh();
    }).toList();
  }
  Future<void> chartBarang(String id,int jumlah,int harga) async {
    String url = baseUrl + 'create_chart';
    final response = await http.post(Uri.parse(url),
        headers: {'content-Type': "application/json"},
        body: jsonEncode(<String, dynamic>{
          'id_barang': id,
          'jumlah': jumlah,
          'harga': harga,
        
        }));
    print(response.body);
    // List<BarangModel> _barangmodelList =
    //     data.map((e) => BarangModel.fromJson(e)).toList();
    // _barangmodelList.map((e) {
    //   barangs.add(e);
    //   barangs.refresh();
    // }).toList();
  }
}
