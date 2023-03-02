// ignore_for_file: unnecessary_brace_in_string_interps, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/slider_controller.dart';
import 'package:tokopedia/app/routes/app_pages.dart';

import '../controllers/slider_data_controller.dart';

class SliderDataView extends GetView<SliderDataController> {
  final sliderC = Get.put(SliderController());
  final sliderC2 = Get.put(SliderDataController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDataView'),
        centerTitle: true,
      ),
      body: FutureBuilder<QuerySnapshot<Object?>>( 
          future: sliderC.getData(),
          builder: (context, Snapshot) {
            if (Snapshot.connectionState == ConnectionState.done) {
              var listData = Snapshot.data!.docs;
              return ListView.builder(
                itemCount: listData.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: () => Get.toNamed(Routes.UPDATE_DATA,arguments: listData[index]),
                  onLongPress: () => sliderC.deleteData(listData[index].id),
                  leading: CircleAvatar(
                    child: Image.network((listData[index].data()
                      as Map<String, dynamic>)["gambarSlider"]),
                  ),
                  // trailing:  Text((listData[index].data()
                  //     as Map<String, dynamic>)["aktifSlider"]),

                  title: Text((listData[index].data()
                      as Map<String, dynamic>)["gambarSlider"]),
                  subtitle: Text((listData[index].data()
                      as Map<String, dynamic>)["keteranganSlider"]),
                ),
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
