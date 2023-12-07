


import 'package:flutter/material.dart';
import 'package:flutter_mvc/controllers/detail/detail.controller.dart';
import 'package:flutter_mvc/controllers/dishes/dishes.controller.dart';
import 'package:flutter_mvc/views/home.view.dart';
import 'package:get/get.dart';

class Detail extends GetResponsiveView<DetailController>  {
  Detail({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text("detail ID : ${Get.parameters['id']}")
          ),
          body: ListView(
            children: [
              Center(
              child: Text(" ${controller.iniDetail} "),),
              Center(
                child: Text("ini name :  ${Get.parameters['name']}"),
              ),
              Center(
                child: Text("ini produk :  ${Get.parameters['produk']}"),
              )
              ]
          ),
            
        );
  }
}