// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors, unused_local_variable, annotate_overrides

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/auth_controller_controller.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final controller = Get.put(LoginController());
  final authC = Get.put(AuthControllerController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Obx(() => SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(25, 70, 25, 40),
                child: Column(
                  children: [
                    Container(
                        height: tinggi * 0.8,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 50),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      'Hi! Welcome Back! 👋',
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        'Hello again, You`ve been missed!',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: abuAbu)),
                                  ),
                                ],
                              ),
                            ),
                            CustomInput(
                              controller: controller.email,
                                label: 'Email Address',
                                hint: 'Masukkan email',
                                obscure: false),
                            SizedBox(
                              height: 20,
                            ),
                            CustomInput(
                              controller: controller.password,
                              label: 'Password',
                              hint: 'Enter your password',
                              obscure: controller.visibilityPassword.value
                                  ? false
                                  : true,
                              icon: IconButton(
                                  onPressed: () => controller.changeEye(),
                                  icon: Icon(controller.visibilityPassword.value
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined)),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () =>
                                    Get.toNamed(Routes.FORGOT_PASSWORD),
                                child: Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: abuAbu),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => authC.login(controller.email.text, controller.password.text),
                              child: Container(
                                margin: EdgeInsets.only(top: 40),
                                width: lebar,
                                height: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: bgLogin2),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Login',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: ()=> Get.toNamed(Routes.REGISTER),
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text("Dont have an account?",style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: abuAbu),),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: lebar * 0.27,
                                    height: 1,
                                    color: abuAbu,
                                  ),
                                  Container(
                                    child: Text(
                                      'Or Login with',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: abuAbu),
                                    ),
                                  ),
                                  Container(
                                    width: lebar * 0.27,
                                    height: 1,
                                    color: abuAbu,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SocialMediaButton(
                                      ontep: () => authC.signInWithFacebook(),
                                      text: 'Facebook',
                                      image: 'assets/images/Facebook.png',
                                      context: context),
                                  SocialMediaButton(
                                      ontep: ()=> authC.signInWithGoogle(),
                                      text: 'Google',
                                      image: 'assets/images/Google.png',
                                      context: context),
                                ],
                              ),
                            )
                          ],
                        )),
                    Container(
                      // margin: EdgeInsets.only(top: 90),
                      width: lebar,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Text(
                              'Don`t have an account?',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: abuAbu),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () => Get.toNamed(Routes.REGISTER),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: bgLogin2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
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

Widget SocialMediaButton({text, image, required BuildContext context,ontep}) {
  double tinggi = MediaQuery.of(context).size.height;
  double lebar = MediaQuery.of(context).size.width;
  return InkWell(
    onTap:  ontep,
    child: Container(
      width: lebar * 0.4,
      height: 55,
      decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 1, color: abuAbu)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 5),
            width: 30,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          ),
          Container(
            child: Text(text,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    ),
  );
}
