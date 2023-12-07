import 'package:final_project/controllers/browse/browse.controller.dart';
import 'package:get/get.dart';

class BrowseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BrowseController>(() => BrowseController(), fenix: true);
  }
}