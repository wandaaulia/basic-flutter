import 'package:flutter_mvc/controllers/home/home.controller.dart';
import 'package:get/get.dart';

class CoreController extends GetxController {

  var count = 8.obs;
  var count2 = 9.obs; 

  @override
  void onInit() {

    ever(
      count,
      (_) => print("jalankan sesuatu first time ... "),
    );

    once(count, (_) => print("jalankan once ... "));

    debounce(count, (_) => print("jalankan debounce ..."), time: Duration(seconds: 3));

    interval(count, (_) => print("jalankan interval ... "), time: Duration(seconds: 1));

    super.onInit();
  }
}
