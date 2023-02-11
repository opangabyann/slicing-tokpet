import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/create_data_controller.dart';

class CreateDataView extends GetView<CreateDataController> {
  final controller = Get.put(CreateDataController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: bgLogin2,
          title: Text('CreateDataView'),
          centerTitle: true,
        ),
        body: Obx(
          () => Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomInput(
                      controller: controller.gambar,
                      label: 'gambar',
                      hint: 'Masukkan link gambar',
                      obscure: false),
                  CustomInput(
                      controller: controller.keterangan,
                      label: 'keterangan',
                      hint: 'Masukkan keterangan',
                      obscure: false),
                  Row(
                    children: [
                      Switch(
                          value: controller.aktif.value,
                          onChanged: (value) => controller.onChange()),
                      // Text(controller.aktif. ? "true" : "false")
                    ],
                  ),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(top: 40),
                      width: MediaQuery.of(context).size.width * 1,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: bgLogin2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'ubah',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}

Widget CustomInput({label, controller, obscure, hint, icon}) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 20),
        child: TextFormField(
            controller: controller,
            obscureText: obscure,
            decoration: InputDecoration(
              // labelText: customLabel,
              labelStyle: const TextStyle(
                fontFamily: "Poppins",
                color: Colors.black,
                fontSize: 19,
              ),
              hintText: hint,
              hintStyle: TextStyle(
                  fontFamily: "Poppins",
                  color: abuAbu,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 18,
              ),
              suffixIcon: icon,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: abuAbu, width: 1),
                gapPadding: 5,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 27, 27, 27), width: 1),
                gapPadding: 5,
              ),
              // filled: true,
            )),
      ),
    ],
  );
}
