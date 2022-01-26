import 'package:ekko/presentation/home/controllers/home.controller.dart';
import 'package:ekko/presentation/home/widgets/list_users.wideget.dart';
import 'package:ekko/presentation/shared/erro.widget.dart';
import 'package:ekko/presentation/shared/load.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Usuários',
        ),
      ),
      body: Obx(
        () {
          if (controller.load.value) {
            return LoadWidget();
          } else if (controller.statusError.value) {
            return ErroWidget();
          } else {
            return ListUsersWidget();
          }
        },
      ),
    );
  }
}