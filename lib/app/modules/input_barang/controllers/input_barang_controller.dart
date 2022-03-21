import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class InputBarangController extends GetxController {

  late TextEditingController nameC;
  late TextEditingController jumlahC;
  late TextEditingController hargaC;

  @override
  void onInit() {
    nameC = TextEditingController();
    jumlahC = TextEditingController();
    hargaC = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    nameC.dispose();
    jumlahC.dispose();
    hargaC.dispose();
    super.dispose();
  }
}
