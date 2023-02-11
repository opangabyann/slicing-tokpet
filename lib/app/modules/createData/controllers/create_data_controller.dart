import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateDataController extends GetxController {
  //TODO: Implement CreateDataController
  TextEditingController gambar = TextEditingController();
  TextEditingController keterangan = TextEditingController();

  RxBool aktif = true.obs;
  onChange() => aktif.toggle();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
