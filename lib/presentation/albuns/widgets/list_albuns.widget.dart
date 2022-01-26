import 'package:ekko/infrastructure/navigation/routes.dart';
import 'package:ekko/presentation/albuns/controllers/albuns.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListAlbunsWidget extends GetView<AlbunsController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.albuns.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const Divider(
              height: 15,
            ),
            ListTile(
              onTap: () => Get.toNamed(Routes.fotos, arguments: {'albumId': controller.albuns[index].id}),
              title: Text(controller.albuns[index].title),
              leading: const Icon(Icons.image, size: 50,),
            ),
          ],
        );
      },
    );
  }
}
