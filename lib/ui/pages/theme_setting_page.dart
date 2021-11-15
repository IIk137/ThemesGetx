import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:themes_project/controllers/theme_controller.dart';

import 'package:themes_project/ui/layout/layout.dart';
import 'package:themes_project/ui/widgets/buttons/primary_button.dart';

class ThemeSettingPage extends StatelessWidget {
  const ThemeSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeController = Get.find<ThemeController>();
    return Layout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PrimaryButton(
              onPress: () {
                _themeController.chooseGreenTheme();
              },
              text: 'Green'),
          PrimaryButton(
              onPress: () {
                _themeController.chooseRedTheme();
              },
              text: 'Red'),
          PrimaryButton(
              onPress: () {
                _themeController.chooseBlueTheme();
              },
              text: 'Blue'),
          PrimaryButton(
              onPress: () {
                Get.back();
              },
              text: 'Go back')
        ],
      ),
    );
  }
}
