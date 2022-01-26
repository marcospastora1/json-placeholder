import 'package:ekko/presentation/images/controllers/image.controller.dart';
import 'package:get/get.dart';

class ImageControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageController>(
      () => ImageController(),
    );
  }
}
