import 'package:ekko/presentation/fotos/controllers/fotos.controller.dart';
import 'package:ekko/presentation/fotos/widgets/list_fotos.widget.dart';
import 'package:ekko/presentation/shared/erro.widget.dart';
import 'package:ekko/presentation/shared/load.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FotosScreen extends GetView<FotosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fotos',
        ),
      ),
      body: Obx(
        () {
          if (controller.load.value) {
            return LoadWidget();
          } else if (controller.statusError.value) {
            return ErroWidget();
          } else {
            return ListFotosWidgets();
          }
        },
      ),
    );
  }
}
