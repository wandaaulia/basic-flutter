


import 'package:final_project/views/browse.view.dart';
import 'package:final_project/views/exchange.view.dart';
import 'package:final_project/views/wallet.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

   callHome() => {
    print("hai")
   };

     var currentIndex = 0.obs;

  final pages = <String>['/browse', '/exchange', '/wallet'];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    print(settings);


 if (settings.name == '/browse')
      return GetPageRoute(
        settings: settings,
        page: () => Browse(),
      );


    if (settings.name == '/wallet')
      return GetPageRoute(
        settings: settings,
        page: () => Wallet(),
      );

if (settings.name == '/exchange')
      return GetPageRoute(
        settings: settings,
        page: () => Exchange(),
      );

    return null;
  }

}