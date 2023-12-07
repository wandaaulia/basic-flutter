import 'package:flutter/material.dart';
import 'package:flutter_mvc/config/route.config.dart';
import 'package:flutter_mvc/controllers/home/home.controller.dart';
import 'package:flutter_mvc/views/dishes.view.dart';
import 'package:get/get.dart';

class Home extends GetResponsiveView<HomeController> {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: SafeArea(
            child: ListView(
          children: [
            Obx(() => Center(child: Text("count  : ${controller.coreController.count.value}"))),
              ElevatedButton(
            style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () {
             controller.increment();
            },
            child: Text('Increment'),
          ),
          ElevatedButton(
            style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.amber)),
            onPressed: () async {
              var data = await Get.to(Dishes());
              print("Hasil : $data");
            },
            child: Text('Dishes'),
          ),
          ElevatedButton(onPressed: () {
            Get.toNamed(RouteConfig.detail + '/3?name=scaffold flutter&produk=widget');
          }, child: Text('Detail')),
           ElevatedButton(onPressed: () {
            Get.snackbar(
              "ini adalah judul snackbar",
              "ini adalah pesan snackbar", 
              animationDuration: Duration(milliseconds: 200),
              duration: Duration(seconds: 2),
              backgroundColor: Colors.amber,
              backgroundGradient: LinearGradient(
                colors: [
                  Colors.lightBlue, Colors.lightGreen
              ]),
              borderColor: Colors.red,
              borderWidth: 5,
              onTap: (_) {
                print("snackbar diklik");
              },
              icon: Icon(
                Icons.ac_unit,
                color: Colors.white
              ),
              shouldIconPulse: false,
              snackStyle: SnackStyle.FLOATING);
          }, child: Text('Get Snackbar'),
          ),
          ElevatedButton(
            onPressed: 
          () {
              Get.defaultDialog(
                title: "Ini Judul",
                middleText: "Ini deskripsinya okee..",
                barrierDismissible: false,
                 //custom cancel widget
                cancel: ElevatedButton(
                  onPressed: () {
                    Get.back();
                  }, child: Text("Batalkan")),

                // custom confirm
                confirm: ElevatedButton(onPressed: () {
                  print("okayyy");
                  Get.back();
                  Get.to(() => Dishes());
                }, child: Text("Oke")),

                // dengan actions, dapat membuat banyak button
                actions: [
                  ElevatedButton(onPressed: () {}, child: Text("Pilihan 1")),
                  ElevatedButton(onPressed: () {}, child: Text("Pilihan 2")),
                  ElevatedButton(onPressed: () {}, child: Text("Pilihan 3")),
                ],

                backgroundColor: Colors.lightBlue,
                radius: 50
              );
          }, child: Text("Show Dialog")),
          ElevatedButton(onPressed: () {
            Get.dialog(
              AlertDialog(
                title: Text("Ini judul"),
                content: Text("Ini content")
              ),
            );
          }, child: Text("Show Custom Dialog")),
          ElevatedButton(onPressed: () {
            Get.bottomSheet(
              Padding(
                padding: 
              EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom
              ),
               child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    color: Colors.amber,
                    child: ListView(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                         TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                         TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                         TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(onPressed: 
                        () {}, child: Text("Save"))
                      ],
                    )),
                  ),
                  isScrollControlled: false,
            );
          }, child: Text("show bottom sheet")),
          ElevatedButton(onPressed: () {
            Get.toNamed("depen");
          }, child: Text("See How List View Works")),
          ElevatedButton(onPressed: () {
            Get.toNamed("position");
          }, child: Text("Resize to avoid button"))
          ],
        )));
  }
}

