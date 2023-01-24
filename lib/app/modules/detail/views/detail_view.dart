// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: tinggi * 0.13,
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: lebar * 0.1,
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: lebar * 0.4,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "search",
                          enabledBorder: OutlineInputBorder()),
                    ),
                  ),
                  Container(
                    width: lebar * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.share_outlined,
                          size: 20,
                          color: Colors.black,
                        ),
                        Icon(
                          CupertinoIcons.cart,
                          size: 20,
                          color: Colors.black,
                        ),
                        Icon(
                          CupertinoIcons.line_horizontal_3,
                          size: 20,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: lebar,
              height: tinggi * 0.4,
              child: Image.asset("assets/images/detail/parfumbesar.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Rp 370.000",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                      Icon(CupertinoIcons.heart),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "Mine. Perfumery ETHEREAL - 50ml Eau De Parfum",
                        style: TextStyle(fontSize: 17),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          list(context, "terjual 250+"),
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              margin: EdgeInsets.only(right: 10),
                              width: lebar * 0.25,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 5, left: 5),
                                    child: Icon(
                                      CupertinoIcons.star_fill,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                  ),
                                  Text(
                                    "4.9(320)",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              )),
                          list(context, "foto pembeli (50)"),
                          list(context, "diskusi"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Detail produk",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Berat satuan",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 17),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 50),
                                child: Text(
                                  "200 g",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                ))
                          ],
                        ),
                        Divider(
                          color: Colors.black54,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Etalase",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 17),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 50),
                                child: Text(
                                  "Mine Parfume Collection",
                                  style: TextStyle(
                                      color: hijau,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ))
                          ],
                        ),
                        Divider(
                          color: Colors.black54,
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "Deskripsi produk",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "Mine. ETHEREAL Eau De Parfum 50mi glass perfume bottle in hard box packaging • ETHEREAL • With facets that highlight a side ...",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "Baca selengkapnya",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: hijau),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 76,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 76,
                            height: 76,
                            child:
                                Image.asset("assets/images/detail/profil.png"),
                          ),
                          Container(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mine. perfumery",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "online 23 jam lalu",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 7),
                                    child: Text(
                                      "kota tanggerang",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  ),
                                ]),
                          ),
                          Container(
                            width: 83,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: hijau),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Follow",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      color: hijau),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Detail produk",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                        Text(
                          "Lihat semua",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: hijau),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Produk(
                              nama: "Mine. perfumery FLORAISON ....",
                              gambar: 'assets/images/detail/parfum1.png',
                              daerah: 'kota tanggerang',
                              diskon: '44%',
                              harga: 'Rp 609.000',
                              potongan: 'Rp 1.090.000',
                              rating: "4.6 | terjual 6rb"
                              ),
                              Produk(
                              nama: "Mine. perfumery TATMI -50 ml ...",
                              gambar: 'assets/images/detail/parfum2.png',
                              daerah: 'kota tanggerang',
                              diskon: '44%',
                              harga: 'Rp 609.000',
                              potongan: 'Rp 1.090.000',
                              rating: "4.6 | terjual 6rb"
                              ),
                              Produk(
                              nama: "Mine. perfumery LUCID DREAMS",
                              gambar: 'assets/images/detail/parfum3.png',
                              daerah: 'kota tanggerang',
                              diskon: '44%',
                              harga: 'Rp 609.000',
                              potongan: 'Rp 1.090.000',
                              rating: "4.6 | terjual 6rb"
                              ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ulasan pembeli",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                        Text(
                          "Lihat semua",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: hijau),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget list(context, text) {
  double tinggi = MediaQuery.of(context).size.height;
  double lebar = MediaQuery.of(context).size.width;
  return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(vertical: 3),
      width: lebar * 0.3,
      height: 30,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ));
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
    height: 320,
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
          width: 146,
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
                width: 80,
                height: 25,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: hijautrans
                ),
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Cashback",style: TextStyle(
                      color: hijau
                    ),)
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
