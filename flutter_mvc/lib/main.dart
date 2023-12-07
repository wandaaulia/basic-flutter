import 'package:flutter/material.dart';
import 'package:flutter_mvc/config/page.config.dart';
import 'package:flutter_mvc/config/route.config.dart';
import 'package:flutter_mvc/controllers/dishes/dishes.controller.dart';
import 'package:flutter_mvc/controllers/home/home.controller.dart';
import 'package:flutter_mvc/views/depen.view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Crypto",
      theme: ThemeData(
        scaffoldBackgroundColor: ThemeData.dark().primaryColor,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          centerTitle: false,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          )
        ),
        useMaterial3: true,
      ),
      getPages: PageConfig.pages,
      initialRoute: RouteConfig.home,
      defaultTransition: Transition.leftToRight,
    );
  }
}
