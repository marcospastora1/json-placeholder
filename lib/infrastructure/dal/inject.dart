import 'package:get/get.dart';

abstract class Inject {
  static T find<T>() {
    return Get.find<T>();
  }

  static void put<T>(T Function() callback) {
    Get.lazyPut<T>(callback);
  }
}
