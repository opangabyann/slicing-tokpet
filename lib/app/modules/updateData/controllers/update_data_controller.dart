import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UpdateDataController extends GetxController {
  //TODO: Implement UpdateDataController
  final listData = Get.arguments;
  TextEditingController gambar = TextEditingController();
  TextEditingController keterangan = TextEditingController();

  RxBool aktif = true.obs;
  onChange() => aktif.toggle();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

    gambar.text = (listData.data()
                      as Map<String, dynamic>)["gambarSlider"];

    keterangan.text = (listData.data()
                      as Map<String, dynamic>)["keteranganSlider"];
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
