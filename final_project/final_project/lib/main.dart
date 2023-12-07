import 'package:final_project/config/page.config.dart';
import 'package:final_project/config/route.config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "CryptoApps",
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
