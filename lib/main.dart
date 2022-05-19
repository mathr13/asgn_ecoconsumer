import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/routes.dart';
import 'utilities/app_pages_utility.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.pages,
      initialRoute: Routes.initial,
    );
  }
}