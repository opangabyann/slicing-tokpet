// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/auth_controller_controller.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/login_with_phone_number_controller.dart';

class LoginWithPhoneNumberView extends GetView<LoginWithPhoneNumberController> {
  final authC = Get.put(AuthControllerController());
  final controller = Get.put(LoginWithPhoneNumberController());
  @override
  Widget build(BuildContext context) {
   double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(25, 70, 25, 40),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: IntrinsicWidth(
                              child: const Text(
                            'Login with phone number',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w600),
                          ))),
                    ),
                    Container(
                      // width: 400,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 25),
                      child: Text(
                          'login with your phone number',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: abuAbu)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Container(
                            // ignore: prefer_const_constructors
                            margin: EdgeInsets.only(bottom: 5),
                            // ignore: prefer_const_constructors
                            child: Align(
                              alignment: Alignment.centerLeft,
                              // ignore: prefer_const_constructors
                              child: Text('Phone number',
                                  // ignore: prefer_const_constructors
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                          Container(
                            child: TextField(
                                    controller: controller.numberPhone,
                                    decoration: InputDecoration(
                                      prefixIcon: Container(
                                          padding: EdgeInsets.all(10),
                                          // ignore: prefer_const_constructors
                                          child: Text(
                                            "+62",
                                            // ignore: prefer_const_constructors
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.grey),
                                          )),
                                      hintText: "Phone Number",
                                      labelText: "Phone Number",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () =>authC.verifyPhone(controller.numberPhone.text),
                              child: Container(
                                margin: EdgeInsets.only(top: 50),
                                width: lebar,
                                height: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: bgLogin2),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Send Instructions',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
