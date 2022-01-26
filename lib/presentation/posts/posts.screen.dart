import 'package:ekko/presentation/posts/controllers/posts.controller.dart';
import 'package:ekko/presentation/posts/widgets/list_view.widget.dart';
import 'package:ekko/presentation/shared/erro.widget.dart';
import 'package:ekko/presentation/shared/load.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostsScreen extends GetView<PostsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Posts de ${controller.arguments['name']}',
        ),
      ),
      body: Obx(
        () {
          if (controller.load.value) {
            return LoadWidget();
          } else if (controller.statusError.value) {
            return ErroWidget();
          } else {
            return ListViewWidget();
          }
        },
      ),
    );
  }
}