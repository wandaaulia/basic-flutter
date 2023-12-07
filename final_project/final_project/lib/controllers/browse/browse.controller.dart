import 'package:final_project/controllers/home/home.binding.dart';
import 'package:final_project/views/home.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrowseController extends GetxController {

   callHome() => {
    print("hai")
   };



  var currentIndex = 0.obs;

  final pages = <String>['/browse', '/home'];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
    print(index);
  }


    Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/home')
      return GetPageRoute(
        settings: settings,
        page: () => Home(),
        binding: HomeBinding(),
      );

    return null;
  }



}