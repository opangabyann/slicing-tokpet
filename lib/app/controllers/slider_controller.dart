// ignore_for_file: empty_catches

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';

class SliderController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  addData(
      bool aktifSlider, String keteranganSlider, String gambarSlider) async {
    CollectionReference slider = firestore.collection("slider");
    final data = {
      "aktifSlider": aktifSlider,
      "keteranganSlider": keteranganSlider,
      "gambarSlider": gambarSlider
    };
    try {
      await slider.add(data).then((DocumentReference doc) => Get.defaultDialog(
          title: "success", middleText: "berhasil menambahkan data"));
    } catch (e) {
      Get.defaultDialog(title: "fail", middleText: "gagal menambahkan data");
    }
  }

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference slider = firestore.collection("slider");

    return await slider.get();
  }

  updateData(String id, bool activeSlider, String keteranganSlider,
      String gambarSlider) async {
    try {
      final data = {
        "aktifSlider": activeSlider,
        "keteranganSlider": keteranganSlider,
        "gambarSlider": gambarSlider
      };
      DocumentReference slider = firestore.collection("slider").doc(id);
      await slider.update(data);
      Get.defaultDialog(title: "success", middleText: "berhasil mengubah data");
      getData();
      Get.toNamed(Routes.SLIDER_DATA);
    } catch (e) {
      print(e);
      Get.defaultDialog(title: "fail", middleText: "gagal mengubah data");
    }
  }

  deleteData(String id) async {
    try {
      Get.defaultDialog(
        title: "anda yakin ingin menghapus?",
        confirm: ElevatedButton(
            onPressed: () async {
              DocumentReference slider = firestore.collection("slider").doc(id);
              await slider.delete();
              
              getData();
              Get.defaultDialog(
                  backgroundColor: Colors.green,
                  title: "success",
                  middleText: "berhasil menghapus",
                  // ignore: prefer_const_constructors
                  titleStyle: TextStyle(color: Colors.white),
                  // ignore: prefer_const_constructors
                  middleTextStyle: TextStyle(color: Colors.white));

            },
            child: Text("yes!")),
        cancel: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () => Get.back(),
            child: Text("No")),
      );
      
    } catch (e) {
      print(e);
      Get.defaultDialog(title: "fail", middleText: "gagal menghapus data");
    }
  }
}
