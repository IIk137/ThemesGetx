import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:themes_project/controllers/theme_controller.dart';
import 'package:themes_project/ui/pages/home_page.dart';
import 'package:themes_project/ui/themes/themes.dart';

Future<void> main() async {
  await GetStorage.init('themeBox');
  Get.put(ThemeController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeController().theme,
      title: 'Theme Demo',
      home: HomePage(),
    );
  }
}