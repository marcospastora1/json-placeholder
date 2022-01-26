import 'package:ekko/presentation/fotos/fotos.screen.dart';
import 'package:ekko/presentation/screens.dart';
import 'package:get/get.dart';

import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.posts,
      page: () => PostsScreen(),
      binding: PostsControllerBinding(),
    ),
    GetPage(
      name: Routes.menu,
      page: () => MenuScreen(),
      binding: MenuControllerBinding(),
    ),
    GetPage(
      name: Routes.albuns,
      page: () => AlbunsScreen(),
      binding: AlbunsControllerBinding(),
    ),
    GetPage(
      name: Routes.comments,
      page: () => CommentsScreen(),
      binding: CommentsControllerBinding(),
    ),
    GetPage(
      name: Routes.fotos,
      page: () => FotosScreen(),
      binding: FotosControllerBinding(),
    ),
    GetPage(
      name: Routes.images,
      page: () => ImageScreen(),
      binding: ImageControllerBinding(),
    ),
  ];
}
