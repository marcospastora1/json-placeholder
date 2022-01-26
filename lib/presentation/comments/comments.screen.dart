import 'package:ekko/presentation/comments/controllers/comments.controller.dart';
import 'package:ekko/presentation/comments/widgets/list_comments.widget.dart';
import 'package:ekko/presentation/shared/erro.widget.dart';
import 'package:ekko/presentation/shared/load.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentsScreen extends GetView<CommentsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Comentários',
        ),
      ),
      body: Obx(
        () {
          if (controller.load.value) {
            return LoadWidget();
          } else if (controller.statusError.value) {
            return ErroWidget();
          } else {
            return ListCommentsWidget();
          }
        },
      ),
    );
  }
}