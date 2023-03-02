// ignore_for_file: avoid_print, prefer_is_empty

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProdukController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  addProduk(
      String asalToko,
      int diskonPersen,
      String gambarProduk,
      int hargaFix,
      int hargaProduk,
      String namaProduk,
      int rating,
      String statusToko,
      String terjual) async {
    CollectionReference slider = firestore.collection("produk");

    final dataProduk = {'asalToko': asalToko, 'diskonPersen': diskonPersen};
  }

  Future<QuerySnapshot<Object?>> getProduk() async {
    CollectionReference produk = firestore.collection("produk");

    return await produk.get();
  }

  filterData() async {
    final result = await firestore
        .collection('produk')
        // .where('hargaProduk', isGreaterThan: 100000)
        // .orderBy('hargaProduk',descending: true)
        .where('flashSale',isEqualTo: true)
        // .limit(3)
        .get();
    print(result.docs.length);
    print('****************************');
    if (result.docs.length > 0) {
      result.docs.forEach((element) {
        print(element.data());
      });
    } else {
      print('tidak ada data');
    }
  }

  Future<QuerySnapshot<Object?>> getFlashSale() async {
    CollectionReference produk = firestore.collection("produk");
     final result = await firestore
        .collection('produk')
        // .where('hargaProduk', isGreaterThan: 100000)
        // .orderBy('hargaProduk',descending: true)
        .where('flashSale',isEqualTo: true)
        // .limit(3)
        .get();
    print(result.docs.length);
    print('****************************');
    if (result.docs.length > 0) {
      result.docs.forEach((element) {
        print(element.data());
      });
    } else {
      print('tidak ada data');
    }
    

    return await produk.get();
  }
}
