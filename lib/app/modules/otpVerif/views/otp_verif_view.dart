// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:tokopedia/app/controllers/auth_controller_controller.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/otp_verif_controller.dart';

class OtpVerifView extends GetView<OtpVerifController> {
  final authC = Get.put(AuthControllerController());
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme( 
      width: 56, 
      height: 56, 
      textStyle: TextStyle( 
          fontSize: 20, 
          color: Color.fromRGBO(30, 60, 87, 1), 
          fontWeight: FontWeight.w600), 
      decoration: BoxDecoration( 
        border: Border.all(color: Color.fromARGB(255, 107, 165, 212)), 
        borderRadius: BorderRadius.circular(20), 
      ), 
    ); 
 
    final focusedPinTheme = defaultPinTheme.copyDecorationWith( 
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)), 
      borderRadius: BorderRadius.circular(8), 
    ); 
 
    final submittedPinTheme = defaultPinTheme.copyWith( 
      decoration: defaultPinTheme.decoration?.copyWith( 
        color: Color.fromRGBO(234, 239, 243, 1), 
      ), 
    );
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      // ignore: prefer_const_constructors
                      child: Align(
                          alignment: Alignment.centerLeft,
                          // ignore: prefer_const_constructors
                          child: IntrinsicWidth(
                              child: const Text(
                            'verification',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w600),
                          ))),
                    ),
                    Container(
                      // width: 400,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 25),
                      child: Text(
                          'Otp code has been succesfully on your phone number,check your message',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: abuAbu)),
                    ),
                    Padding( 
            padding: const EdgeInsets.all(30.0), 
            child: Pinput( 
              onSubmitted: (pin) => authC.checkOtp(pin), 
              length: 6, 
              defaultPinTheme: defaultPinTheme, 
              focusedPinTheme: focusedPinTheme, 
              submittedPinTheme: submittedPinTheme, 
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit, 
              showCursor: true, 
              // ignore: avoid_print 
              onCompleted: (pin) => authC.checkOtp(pin), 
            ), 
          )
          ],
        ),
      ),
    );
  }
}
