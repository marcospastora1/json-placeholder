import 'package:ekko/infrastructure/dal/connect.dart';
import 'package:ekko/infrastructure/dal/storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

import 'config.dart';
import 'domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'domain/core/abstractions/infrastructure/storage.interface.dart';

import 'presentation/shared/loading/loading.controller.dart';

class Initializer {
  static Future<void> init() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      await _initStorage();
      _initConnect();
      _initGlobalLoading();
      _initScreenPreference();
    } catch (err) {
      rethrow;
    }
  }

  static Future<void> _initConnect() async {
    final getConnect = GetConnect();
    final url = ConfigEnvironments.getEnvironments()['url'];
    getConnect.baseUrl = url;
    getConnect.timeout = const Duration(seconds: 20);
    getConnect.httpClient.maxAuthRetries = 0;

    Logger().i('Conectado em: $url');
    final connect = Connect(connect: getConnect);
    Get.put<IHttpConnect>(connect);
  }

  static void _initGlobalLoading() {
    final loading = LoadingController();
    Get.put(loading);
  }

  static Future<void> _initStorage() async {
    await GetStorage.init();
    final storage = Storage(storage: GetStorage());
    Get.put<IStorage>(storage);
  }

  static void _initScreenPreference() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
