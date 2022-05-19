import 'package:get/get.dart';

import '../constants/routes.dart';
import '../screens/screen_values_library.dart';

abstract class AppPages {

  static List<GetPage> pages = [
    GetPage(name: Routes.initial, page: () => const SplashScreen()),
    GetPage(name: Routes.authentication, page: () => const AuthenticationScreen()),
  ];

}