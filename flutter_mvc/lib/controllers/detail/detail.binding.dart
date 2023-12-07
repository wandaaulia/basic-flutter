


import 'package:flutter_mvc/controllers/detail/detail.controller.dart';
import 'package:get/get.dart';

class DetailBinding extends Bindings {


    @override
    void dependencies() {
      Get.lazyPut<DetailController>(() => DetailController(), fenix: true);
    }
}