import 'package:app_test_mediatama/app/controllers/test_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/input_barang_controller.dart';

class InputBarangView extends GetView<InputBarangController> {
  final testC = Get.find<TestController>();
  var id;
  @override
  Widget build(BuildContext context) {
    if (Get.arguments != null) {
      id = Get.arguments['id'];
      controller.nameC.text = Get.arguments['nama_barang'];
      controller.jumlahC.text = Get.arguments['jumlah'].toString();
      controller.hargaC.text = Get.arguments['harga'].toString();
    }
    return Scaffold(
        appBar: AppBar(
          title: Get.arguments != null
              ? Text("Edit Data Barang")
              : Text('Input Data Barang'),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Get.arguments != null
                  ? Text("Edit Data Barang")
                  : Text('Input Data Barang'),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: controller.nameC,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: controller.jumlahC,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: controller.hargaC,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              Get.arguments != null
                  ? Container(
                      width: double.infinity,
                      child: TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.green),
                        onPressed: () async {
                          await testC
                              .updateBarang(
                                  id.toString(),
                                  controller.nameC.text,
                                  int.parse(controller.jumlahC.text),
                                  int.parse(controller.hargaC.text))
                              .then((value) => Get.back());
                        },
                        child: Text(
                          "Update Data",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  : Container(
                      width: double.infinity,
                      child: TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.green),
                        onPressed: () async {
                          await testC
                              .inputBarang(
                                  controller.nameC.text,
                                  int.parse(controller.jumlahC.text),
                                  int.parse(controller.hargaC.text))
                              .then((value) => Get.back());
                        },
                        child: Text(
                          "Input Data",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
            ],
          ),
        ));
  }
}
