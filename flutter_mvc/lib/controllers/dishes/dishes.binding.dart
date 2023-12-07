import 'package:flutter_mvc/controllers/dishes/dishes.controller.dart';
import 'package:get/get.dart';

class DishesBinding extends Bindings {

   @override
   void dependencies() {
    Get.lazyPut<DishesController>(() => DishesController(),  fenix: true);
   }
}