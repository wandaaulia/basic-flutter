import 'package:flutter_mvc/controllers/core/core.controller.dart';
import 'package:get/get.dart';

class CoreBinding extends Bindings {
   @override
   void dependencies() {
    Get.lazyPut<CoreController>(() => CoreController(),  fenix: true);
   }
}