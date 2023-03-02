// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';

import '../controllers/home_admin_controller.dart';

class HomeAdminView extends GetView<HomeAdminController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Get.toNamed(Routes.SLIDER_DATA),
                child: Container(
                  width: 100,
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/images/menu/promo.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 7,
                        ),
                        // width: widht,
                        child: Text(
                          "slider data",
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              InkWell(
                onTap: () => Get.toNamed(Routes.PRODUK_DATA),
                child: Container(
                  width: 100,
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/images/menu/promo.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 7,
                        ),
                        // width: widht,
                        child: Text(
                          "produk data",
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
