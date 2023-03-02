// ignore_for_file: empty_catches



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthControllerController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Uri _url = Uri.parse('https://mail.google.com/mail/u/0/#inbox');
  String verificationCode = "";
  Stream<User?> streamAuthStatus() => auth.authStateChanges();
  login(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      Get.offAllNamed(Routes.HOME);
      Get.defaultDialog(middleText: "berhasil login");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.defaultDialog(
            title: "error", middleText: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Get.defaultDialog(
            title: "error",
            middleText: 'Wrong password provided for that user.');
      }
    }
  }

  logOut() {
    try {
      Get.defaultDialog(
        title: "anda yakin ingin logout?",
        confirm: ElevatedButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Get.offAllNamed(Routes.LOGIN);
              Get.defaultDialog(
                  backgroundColor: Colors.green,
                  title: "success",
                  middleText: "berhasil log out",
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
      e;
    }
  }

  register(String emailAddress, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      credential.user?.sendEmailVerification();
      Get.offAllNamed(Routes.CHECK_EMAIL);
      Get.defaultDialog(middleText: "akun berhasil terdaftar");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.defaultDialog(
            title: "error", middleText: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Get.defaultDialog(
            title: "error",
            middleText: 'The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  resetPassword(String email) async {
    try {
      final credential = await auth.sendPasswordResetEmail(email: email);

      Get.toNamed(Routes.CHECK_EMAIL);
    } on FirebaseAuthException catch (e) {
      Get.defaultDialog(title: "alert", middleText: "gagal reset password");
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Create a new provider
    GoogleAuthProvider googleProvider = GoogleAuthProvider();

    googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');
    googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithPopup(googleProvider);

    // Or use signInWithRedirect
    // return await FirebaseAuth.instance.signInWithRedirect(googleProvider);
  }

  Future<UserCredential> signInWithFacebook() async {
    // Create a new provider
    FacebookAuthProvider facebookProvider = FacebookAuthProvider();

    facebookProvider.addScope('email');
    facebookProvider.setCustomParameters({
      'display': 'popup',
    });

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithPopup(facebookProvider);

    // Or use signInWithRedirect
    // return await FirebaseAuth.instance.signInWithRedirect(facebookProvider);
  }

  Future<void> openMail() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  verifyPhone(String nomor) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: "+62${nomor}",
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) {
            if (value.user != null) {
              Get.toNamed(Routes.HOME);
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          Get.defaultDialog(title: "alert", middleText: "gagal ngirim");
        },
        codeSent: (String verificationId, int? resendToken) {
          verificationCode = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          verificationCode = verificationId;
        },
        timeout: Duration(seconds: 60));
    Get.toNamed(Routes.OTP_VERIF, parameters: {"phone": nomor});
  }

  checkOtp(String smsCode)async{
    try {
      await auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationCode, smsCode: smsCode)).then((value) {
        if (value.user != null){
          Get.toNamed(Routes.HOME);
        }
      });
    } catch (e) {
          Get.defaultDialog(title: "alert", middleText: "failed code verification");
      
    }
  }
}
