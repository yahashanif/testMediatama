import 'package:get/get.dart';

import '../controllers/input_barang_controller.dart';

class InputBarangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InputBarangController>(
      () => InputBarangController(),
    );
  }
}
