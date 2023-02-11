import 'package:get/get.dart';

import '../controllers/otp_verif_controller.dart';

class OtpVerifBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpVerifController>(
      () => OtpVerifController(),
    );
  }
}
