import 'package:flutter_mvc/controllers/core/core.controller.dart';
import 'package:flutter_mvc/services/post_result_model.dart';
import 'package:get/get.dart';

class DishesController extends GetxController {

  PostResult? postResult;

  CoreController coreController = Get.find();

   var dishesValue = 8.obs;


   var job =  null;

   var name = null;


   var iniTdkObs = 8;

    decrementDish() {
       coreController.count.value--;
    }

    addNumber() {
      print("print data ");
      dishesValue++;
      update();
    }


    fetchApi(a, b) async {
      await PostResult.connectToAPI(a, b).then((value) {
            job = value.job;
            name = value.name;
          });

          print("print api ");
    }
} 