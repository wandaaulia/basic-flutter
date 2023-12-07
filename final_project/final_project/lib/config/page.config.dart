


import 'package:final_project/config/route.config.dart';
import 'package:final_project/controllers/browse/browse.binding.dart';
import 'package:final_project/controllers/exchange/exchange.binding.dart';
import 'package:final_project/controllers/home/home.binding.dart';
import 'package:final_project/controllers/wallet/wallet.binding.dart';
import 'package:final_project/views/browse.view.dart';
import 'package:final_project/views/exchange.view.dart';
import 'package:final_project/views/home.view.dart';
import 'package:final_project/views/wallet.view.dart';
import 'package:get/get.dart';

class PageConfig {
  static final List<GetPage> pages = [
      GetPage(name: RouteConfig.home, page: () => Home(), binding: HomeBinding()),
      GetPage(name: RouteConfig.browse, page: () => Browse(),binding: BrowseBinding()),
      GetPage(name: RouteConfig.wallet, page: () => Wallet(), binding: WalletBinding()),
      GetPage(name: RouteConfig.exchange, page: () => Exchange(), binding: ExchangeBinding()),
  ];
}