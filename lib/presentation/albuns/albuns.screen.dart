import 'package:ekko/presentation/albuns/controllers/albuns.controller.dart';
import 'package:ekko/presentation/albuns/widgets/list_albuns.widget.dart';
import 'package:ekko/presentation/shared/erro.widget.dart';
import 'package:ekko/presentation/shared/load.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbunsScreen extends GetView<AlbunsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Albuns de ${controller.arguments['name']}',
        ),
      ),
      body: Obx(
        () {
          if (controller.load.value) {
            return LoadWidget();
          } else if (controller.statusError.value) {
            return ErroWidget();
          } else {
            return ListAlbunsWidget();
          }
        },
      ),
    );
  }
}