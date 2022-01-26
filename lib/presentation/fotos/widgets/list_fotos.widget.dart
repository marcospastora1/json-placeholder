import 'package:ekko/infrastructure/navigation/routes.dart';
import 'package:ekko/presentation/fotos/controllers/fotos.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListFotosWidgets extends GetView<FotosController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.fotos.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const Divider(
              height: 15,
            ),
            ListTile(
              onTap: () => Get.toNamed(
                Routes.images,
                arguments: {
                  'url': controller.fotos[index].url,
                  'title': controller.fotos[index].title,
                },
              ),
              title: Text(controller.fotos[index].title),
              leading: Image.network(controller.fotos[index].thumbnailUrl),
            ),
          ],
        );
      },
    );
  }
}
