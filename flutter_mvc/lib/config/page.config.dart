import 'package:flutter_mvc/config/route.config.dart';
import 'package:flutter_mvc/controllers/core/core.binding.dart';
import 'package:flutter_mvc/controllers/core/core.controller.dart';
import 'package:flutter_mvc/controllers/detail/detail.binding.dart';
import 'package:flutter_mvc/controllers/dishes/dishes.binding.dart';
import 'package:flutter_mvc/controllers/home/home.binding.dart';
import 'package:flutter_mvc/controllers/home/home.controller.dart';
import 'package:flutter_mvc/views/depen.view.dart';
import 'package:flutter_mvc/views/detail.view.dart';
import 'package:flutter_mvc/views/dishes.view.dart';
import 'package:flutter_mvc/views/home.view.dart';
import 'package:flutter_mvc/views/position.view.dart';
import 'package:get/get.dart';


class PageConfig {
  static final List<GetPage> pages = [
      GetPage(
        name: RouteConfig.home, 
        page: () => Home(),
        bindings: [ CoreBinding(), DishesBinding(), HomeBinding(),],
        ),
        GetPage(
          name: RouteConfig.dishes, 
          page: () => Dishes(),
          bindings :[CoreBinding(),DishesBinding(), HomeBinding()],
        ),
        GetPage(
          name: RouteConfig.detail + '/:id?',
          page: () => Detail(),
          binding: DetailBinding()
        ),
        GetPage(
          name: RouteConfig.depen,
          page : () => Depen(),
        ),
        GetPage(
          name: RouteConfig.position,
          page: () => Position()
        )
  ];
}