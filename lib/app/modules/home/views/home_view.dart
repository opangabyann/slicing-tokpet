// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
              decoration: BoxDecoration(color: bgNav),
              padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: lebar * 0.43,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "search"),
                    ),
                  ),
                  Container(
                    width: lebar * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.mail_outline,
                          size: 20,
                          color: Colors.white,
                        ),
                        Icon(
                          CupertinoIcons.bell,
                          size: 20,
                          color: Colors.white,
                        ),
                        Icon(
                          CupertinoIcons.cart,
                          size: 20,
                          color: Colors.white,
                        ),
                        Icon(
                          CupertinoIcons.line_horizontal_3,
                          size: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                // height: tinggi * 0.2,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: tinggi * 0.15,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInOutQuart,
                  ),
                  items: [
                    'assets/images/kebut.png',
                    'assets/images/keju.png',
                    'assets/images/bebasongkir.png'
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: lebar,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius:
                                    BorderRadiusDirectional.circular(8)),
                            child: Image.asset(
                              i,
                              fit: BoxFit.fill,
                            ));
                      },
                    );
                  }).toList(),
                )),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [
                  CustomIcon(
                      icon: "assets/images/menu/promo.png", text: 'promo'),
                  CustomIcon(
                      icon: "assets/images/menu/belanjaan.png",
                      text: 'Toserba'),
                  CustomIcon(
                      icon: "assets/images/menu/headphone.png",
                      text: 'Elektronik'),
                  CustomIcon(
                      icon: "assets/images/menu/topup.png",
                      text: 'Top-Up & tagihan'),
                  CustomIcon(
                      icon: "assets/images/menu/lihatsemua.png",
                      text: 'Lihat semua'),
                  CustomIcon(
                      icon: "assets/images/menu/ceklis.png",
                      text: 'Official Store'),
                  CustomIcon(
                      icon: "assets/images/menu/play.png",
                      text: 'Live shopping'),
                  CustomIcon(
                      icon: "assets/images/menu/seru.png",
                      text: 'Tokopedia Seru'),
                  CustomIcon(
                      icon: "assets/images/menu/cod.png",
                      text: 'Bayar di tempat'),
                  CustomIcon(
                      icon: "assets/images/menu/banggaLokal.png",
                      text: 'Bangga lokal'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'kejar diskon spesial',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: judul),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("berakhir dalam",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: subJudul)),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            // padding : EdgeInsets.all(2),
                            width: lebar * 0.25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: merah,
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.access_time,
                                    color: Colors.white, size: 17),
                                Text("00 : 15 : 12",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: Text('Lihat Semua',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: hijau)),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              width: lebar,
              height: 310,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff01A0C6),
                  Color(0xff01AA6C),
                ],
              )),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 32),
                      child: Image.asset("assets/images/kejar.png"),
                    ),
                    Row(
                      children: [
                        KejarProduk(
                            gambar: 'assets/images/masker.png',
                            daerah: 'Kab. Bandung',
                            diskon: '92%',
                            harga: 'Rp 1.000',
                            totalPersen: 100,
                            currentPersen: 80,
                            potongan: 'Rp 12.546',
                            status: 'Segera Habis'),
                        KejarProduk(
                            gambar: 'assets/images/indomi.png',
                            daerah: 'Jakarta Timur',
                            diskon: '6%',
                            harga: 'Rp 103.000',
                            totalPersen: 100,
                            currentPersen: 35,
                            potongan: 'Rp 109.900',
                            status: 'Tersedia')
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pilihan promo hari ini',
                    style: TextStyle(
                        color: judul,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Text('Lihat Semua',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: hijau)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Promo(context, "assets/images/ohBeauty.png"),
                    Promo(context, "assets/images/toserba.png"),
                    Promo(context, "assets/images/megadeal.png"),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Produk pilihan untukmu',
                    style: TextStyle(
                        color: judul,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Text('Lihat Semua',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: hijau)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Produk(
                        
                        nama: "Logitech G603 Lightspeed ...",
                        gambar: 'assets/images/mouse1.png',
                        daerah: 'Jakarta Timur',
                        diskon: '44%',
                        harga: 'Rp 609.000',
                        potongan: 'Rp 1.090.000',
                        rating: "4.6 | terjual 6rb"),
                    Produk(
                        
                        nama: "Logitech G603 Lightspeed ...",
                        gambar: 'assets/images/mouse1.png',
                        daerah: 'Jakarta Timur',
                        diskon: '44%',
                        harga: 'Rp 609.000',
                        potongan: 'Rp 1.090.000',
                        rating: "4.6 | terjual 6rb"),
                    Produk(
                        
                        nama: "Logitech G603 Lightspeed ...",
                        gambar: 'assets/images/mouse1.png',
                        daerah: 'Jakarta Timur',
                        diskon: '44%',
                        harga: 'Rp 609.000',
                        potongan: 'Rp 1.090.000',
                        rating: "4.6 | terjual 6rb")
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.only(left: 20, top: 20),
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Kategori(
                        context: context,
                        judul: "for opang",
                        warna1: Color(0xffA92176),
                        warna2: Color(0xffFA38B1)),
                    Kategori(
                        context: context,
                        judul: "special discount",
                        warna1: Color(0xff462180),
                        warna2: Color(0xff8A40FF)),
                    Kategori(
                        context: context,
                        judul: "aktivitasmu",
                        warna1: Color(0xff0C87A9),
                        warna2: Color(0xff3BD5FF)),
                    Kategori(
                        context: context,
                        judul: "untukmu",
                        warna1: Color(0xffEE9B12),
                        warna2: Color(0xffFFBE53)),
                  ],
                ),
              ),
            ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.only(left:10, top: 20),
              alignment: Alignment.center,

                child: Wrap(
                  spacing: 20,
              children: [
                Produk(
                    nama: "Logitech G603 Lightspeed ...",
                    gambar: 'assets/images/mouse1.png',
                    daerah: 'Jakarta Timur',
                    diskon: '44%',
                    harga: 'Rp 609.000',
                    potongan: 'Rp 1.090.000',
                    rating: "4.6 | terjual 6rb"),
                Produk(
                    nama: "Logitech G603 Lightspeed ...",
                    gambar: 'assets/images/mouse1.png',
                    daerah: 'Jakarta Timur',
                    diskon: '44%',
                    harga: 'Rp 609.000',
                    potongan: 'Rp 1.090.000',
                    rating: "4.6 | terjual 6rb"),
                Produk(

                    nama: "Logitech G603 Lightspeed ...",
                    gambar: 'assets/images/mouse1.png',
                    daerah: 'Jakarta Timur',
                    diskon: '44%',
                    harga: 'Rp 609.000',
                    potongan: 'Rp 1.090.000',
                    rating: "4.6 | terjual 6rb"),
                Produk(

                    nama: "Logitech G603 Lightspeed ...",
                    gambar: 'assets/images/mouse1.png',
                    daerah: 'Jakarta Timur',
                    diskon: '44%',
                    harga: 'Rp 609.000',
                    potongan: 'Rp 1.090.000',
                    rating: "4.6 | terjual 6rb"),
              ],
            )),

            Container(
              width: lebar,
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 1, color: Colors.grey)),
              child: Text(
                'Lihat Selebihnya',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget Kategori({context, judul, warna1, warna2}) {
  return Container(
    margin: EdgeInsets.only(left: 5),
    width: MediaQuery.of(context).size.width * 0.25,
    height: 65,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topRight,
        colors: [warna1, warna2],
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 25,
          height: 3,
          margin: EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
        ),
        Container(
          margin: EdgeInsets.only(left: 5),
          child: Text(
            judul,
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
        )
      ],
    ),
  );
}

Widget CustomIcon({icon, text}) {
  return Container(
    width: 65,
    child: Column(
      children: [
        Container(
          child: Image.asset(icon),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 7,
          ),
          // width: widht,
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        )
      ],
    ),
  );
}

Widget Promo(context, gambar) {
  double tinggi = MediaQuery.of(context).size.height;
  double lebar = MediaQuery.of(context).size.width;
  return Container(width: lebar * 0.4, child: Image.asset(gambar));
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
    margin: EdgeInsets.only(right : 15,bottom: 15  ),
    width: 200,
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
            )
          ),
          width: 200,
          height: 146,
          child: Image.asset(gambar,fit: BoxFit.fill,),
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

Widget KejarProduk(
    {gambar,
    harga,
    diskon,
    potongan,
    daerah,
    status,
    totalPersen,
    currentPersen}) {
  return Container(
    margin: EdgeInsets.only(right: 15),
    width: 146,
    height: 276,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Colors.white),
    child: Column(
      children: [
        Container(
          width: 146,
          height: 146,
          child: Image.asset(gambar),
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
                      child: Image.asset('assets/images/os.png'),
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
                margin: EdgeInsets.only(bottom: 6),
                child: StepProgressIndicator(
                  totalSteps: totalPersen,
                  currentStep: currentPersen,
                  size: 4,
                  padding: 0,
                  selectedColor: merah,
                  unselectedColor: Color(0xffeeeeee),
                  roundedEdges: Radius.circular(2),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(status,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: subJudul)),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
