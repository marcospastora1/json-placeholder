import 'package:ekko/infrastructure/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/menu.controller.dart';

class MenuScreen extends GetView<MenuController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed(
                Routes.posts,
                arguments: {
                  'name': controller.arguments['name'],
                  'id': controller.arguments['id']
                },
              ),
              child: const Text(
                'Posts',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed(
                Routes.albuns,
                arguments: {
                  'name': controller.arguments['name'],
                  'id': controller.arguments['id'],
                }
              ),
              child: const Text(
                'Albuns',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
