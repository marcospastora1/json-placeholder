import 'package:ekko/presentation/comments/controllers/comments.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCommentsWidget extends GetView<CommentsController> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.comments.length,
      itemBuilder: (context, index){
        return Column(
          children: [
            const Divider(
              height: 15,
            ),
            ListTile(
              title: Text('${controller.comments[index].name} <<${controller.comments[index].email}>>'),
              subtitle: Text(controller.comments[index].body),
            ),
          ],
        );
      }
    );
  }
}