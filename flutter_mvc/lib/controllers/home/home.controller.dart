import 'package:flutter_mvc/controllers/core/core.controller.dart';
import 'package:flutter_mvc/controllers/dishes/dishes.controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  CoreController coreController = Get.find();
  DishesController dishesController = Get.find();

  increment() => {coreController.count.value++};

  decrement() => {coreController.count.value--};

  incrementCount2() => {
    coreController.count2.value++
  };

  @override
  void onInit() {
    super.onInit();
    print("oninit");
  }
}
