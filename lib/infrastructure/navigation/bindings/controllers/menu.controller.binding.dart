import 'package:ekko/presentation/menu/controllers/menu.controller.dart';
import 'package:get/get.dart';

class MenuControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuController>(
      () => MenuController(),
    );
  }
}
