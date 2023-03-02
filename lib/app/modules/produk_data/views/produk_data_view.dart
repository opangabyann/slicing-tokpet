import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/produk_controller.dart';
import 'package:tokopedia/app/controllers/slider_controller.dart';
import 'package:tokopedia/app/modules/detail/views/detail_view.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/produk_data_controller.dart';

class ProdukDataView extends GetView<ProdukDataController> {
 final sliderC = Get.put(ProdukController());
  final sliderC2 = Get.put(ProdukDataController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDataView'),
        centerTitle: true,
      ),
      body: FutureBuilder<QuerySnapshot<Object?>>( 
          future: sliderC.getProduk(),
          builder: (context, Snapshot) {
            if (Snapshot.connectionState == ConnectionState.done) {
              var listData = Snapshot.data!.docs;
              return Row(
                children: 
                  List.generate(listData.length, (index) => Produk(
                   nama : (listData[index].data() as Map<String, dynamic>)["namaProduk"],
                   gambar: (listData[index].data() as Map<String, dynamic>)["gambarProduk"],
                   harga:  (listData[index].data() as Map<String, dynamic>)["hargaFix"].toString(),
                   diskon: (listData[index].data() as Map<String, dynamic>)["diskonPersen"].toString(),
                   potongan: (listData[index].data() as Map<String, dynamic>)["hargaProduk"].toString(),
                   daerah: (listData[index].data() as Map<String, dynamic>)["asalToko"],
                   rating: (listData[index].data() as Map<String, dynamic>)["rating"].toString()
                  ),)
                
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),

      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.CREATE_DATA),
        child: Icon(Icons.add),
      ),
    );
  }
}

Widget Produk({
  nama,
  gambar,
  harga,
  diskon,
  potongan,
  daerah,
  rating,
}) {
  return Container(
    margin: EdgeInsets.only(right: 15, bottom: 15),
    width: 146,
    height: 323,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: abuAbu,
          blurRadius: 8,
          offset: Offset(0, 4),
        )
      ],
    ),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          )),
          width: 200,
          height: 146,
          child: Image.asset(
            gambar,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
          child: Column(
            children: [
              Container(
                // margin: EdgeInsets.only(bottom: 6),
                alignment: Alignment.centerLeft,
                child: Text(
                  nama,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                // margin: EdgeInsets.only(bottom: 6),
                alignment: Alignment.centerLeft,
                child: Text(
                  harga,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 6, top: 6),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 6),
                      width: 36,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(2),
                          color: merahTrans),
                      child: Center(
                        child: Text(
                          diskon,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: merah),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        potongan,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough,
                            color: subJudul),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 2),
                      child: Image.asset('assets/images/mahkota.png'),
                    ),
                    Container(
                      child: Text(
                        daerah,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: subJudul),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 2),
                      child: Image.asset('assets/images/bintang.png'),
                    ),
                    Container(
                      child: Text(
                        rating,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: subJudul),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}