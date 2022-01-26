import 'package:ekko/presentation/images/controllers/image.controller.dart';
import 'package:ekko/presentation/images/widgets/image.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageScreen extends GetView<ImageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.arguments['title']),
      ),
      body: ImageWidget(),
    );
  }
}
