import 'package:ekko/presentation/posts/controllers/posts.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListViewWidget extends GetView<PostsController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.posts.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const Divider(
              height: 15,
            ),
            ListTile(
              title: Text(controller.posts[index].title),
              subtitle: Text(controller.posts[index].body),
            ),
          ],
        );
      },
    );
  }
}
