import 'package:app_test_mediatama/app/controllers/test_controller.dart';
import 'package:app_test_mediatama/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final testC = Get.find<TestController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Data Barang'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed(Routes.INPUT_BARANG);
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: FutureBuilder(
            initialData: testC.getAllBarang(),
            builder: (context, snapshot) => Obx(
                  () => ListView.builder(
                      itemCount: testC.barangs.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(testC.barangs[index].namaBarang!),
                                    Text(testC.barangs[index].jumlah!
                                        .toString()),
                                    Text(
                                        testC.barangs[index].harga!.toString()),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          testC.chartBarang(
                                              testC.barangs[index].id
                                                  .toString(),
                                              int.parse(testC
                                                  .barangs[index].jumlah
                                                  .toString()),
                                              int.parse(testC
                                                  .barangs[index].harga
                                                  .toString()));
                                        },
                                        child: Text(
                                          "Chart",
                                          style: TextStyle(color: Colors.green),
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          Get.toNamed(Routes.INPUT_BARANG,
                                              arguments: {
                                                'id': testC.barangs[index].id,
                                                'nama_barang': testC
                                                    .barangs[index].namaBarang,
                                                'jumlah':
                                                    testC.barangs[index].jumlah,
                                                'harga':
                                                    testC.barangs[index].harga,
                                              });
                                        },
                                        child: Text("Edit",
                                            style: TextStyle(
                                                color: Colors.amber))),
                                    TextButton(
                                        onPressed: () {
                                          testC.deleteBarang(testC
                                              .barangs[index].id
                                              .toString());
                                        },
                                        child: Text("Hapus",
                                            style:
                                                TextStyle(color: Colors.red))),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )));
  }
}
