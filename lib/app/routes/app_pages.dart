import 'package:get/get.dart';

import 'package:app_test_mediatama/app/modules/home/bindings/home_binding.dart';
import 'package:app_test_mediatama/app/modules/home/views/home_view.dart';
import 'package:app_test_mediatama/app/modules/input_barang/bindings/input_barang_binding.dart';
import 'package:app_test_mediatama/app/modules/input_barang/views/input_barang_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INPUT_BARANG,
      page: () => InputBarangView(),
      binding: InputBarangBinding(),
    ),
 
  ];
}
