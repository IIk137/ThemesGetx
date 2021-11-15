import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:themes_project/ui/themes/themes.dart';

class ThemeController extends GetxController {
  final _themeBox = GetStorage('themeBox');
  String _themeKey = 'redTheme';

  String get themeKey => _themeKey;
  ThemeData get theme => loadTheme() != null ? loadTheme() : Themes.blue;

  chooseRedTheme() {
    Get.changeTheme(Themes.red);
    _themeKey = themeKey;
    _themeBox.write(
      themeKey,
      'redTheme',
    );
  }

  chooseBlueTheme() async {
    Get.changeTheme(Themes.blue);
    await _themeBox.write(
      themeKey,
      'blueTheme',
    );
  }

  chooseGreenTheme() {
    Get.changeTheme(Themes.green);
    _themeBox.write(
      themeKey,
      'greenTheme',
    );
  }

  loadTheme() {
    // if (_themeBox.read<String>(themeKey) == '') {
    //   return Themes.blue;
    // } else
    if (_themeBox.read<String>(themeKey) == 'redTheme') {
      return Themes.red;
    } else if (_themeBox.read<String>(themeKey) == 'greenTheme') {
      return Themes.green;
    } else if (_themeBox.read<String>(themeKey) == 'blueTheme') {
      return Themes.blue;
    }
  }
}
