import 'package:final_project/controllers/exchange/exchange.controller.dart';
import 'package:final_project/controllers/wallet/wallet.controller.dart';
import 'package:get/get.dart';

class ExchangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExchangeController>(() => ExchangeController(), fenix: true);
  }
}