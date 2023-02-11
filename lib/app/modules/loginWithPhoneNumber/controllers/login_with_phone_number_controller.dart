import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginWithPhoneNumberController extends GetxController {
  //TODO: Implement LoginWithPhoneNumberController
  TextEditingController numberPhone = TextEditingController();

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
