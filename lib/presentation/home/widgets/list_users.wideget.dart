import 'package:ekko/infrastructure/navigation/routes.dart';
import 'package:ekko/presentation/home/controllers/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListUsersWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.users.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const Divider(
              height: 15,
            ),
            ListTile(
              onTap: () { 
                //Get.toNamed(Routes.posts, );
                Get.toNamed(Routes.menu, arguments: {'id': controller.users[index].id,  'name': controller.users[index].name});
              },
              title: Text('${controller.users[index].name}, Id: ${controller.users[index].id}'),
              subtitle: Text(controller.users[index].email),
              leading: const Icon(Icons.person, color: Colors.blue, size: 50,),
              
            ),
          ],
        );
      },
    );
  }
}
