import 'package:ekko/presentation/images/controllers/image.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageWidget extends GetView<ImageController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(controller.arguments['url']),
    );
  }
}
