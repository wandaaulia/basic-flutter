



import 'package:flutter_mvc/controllers/home/home.controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(),  fenix: true);
  }
}