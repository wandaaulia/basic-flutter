

import 'package:flutter/material.dart';
import 'package:flutter_mvc/views/dishes.view.dart';
import 'package:get/get.dart';

class Depen extends GetResponsiveView<MyController> {


      // final c = Get.put(() => MyController(), tag: "tag-test");

 Depen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ini"),
      ),
      body: SizedBox(
        height: Get.height,
        child: SingleChildScrollView(
          child: Container(
            height: 1100,
            child: ListView(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue
                ),Container(
                  width: 200,
                  height: 200,
                  color: Colors.red
                ),Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.green
                ),Container(
                  width: 200,
                  height: 200,
                  color: Colors.brown,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 200, 
                        width: 100,
                        color: index % 2 == 0 ? Colors.white : Colors.red
                      );
                    }
                  ),
                )
              ],
            ),
          )
        )
      )
    );
  }
}



class CountPage extends StatelessWidget {
  final c = Get.find<MyController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Obx(() => Text(
          "ini count ${c.count}",
          style : TextStyle(fontSize: 35),
        ),)
      ),
      floatingActionButton: FloatingActionButton(onPressed: 
      () => c.add()),
    );
  }
}


class MyController extends GetxController {
  var count = 0.obs;

  void add() => count++;
}