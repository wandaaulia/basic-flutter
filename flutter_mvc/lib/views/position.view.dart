import 'package:flutter/material.dart';
import 'package:flutter_mvc/views/depen.view.dart';
import 'package:get/get.dart';

class Position extends GetResponsiveView<MyController> {
  Position({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text("Position")),
        body: SizedBox(
            height: Get.height,
            child: Center(
              child: SingleChildScrollView(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a search term',
                  ),
                ),
              ),
            )));
  }
}
