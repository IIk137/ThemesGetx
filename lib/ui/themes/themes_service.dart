import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:themes_project/ui/themes/themes.dart';

// class ThemeService {
//   final themeBox = GetStorage();
//   final _themeKey = '';

//   /// Get isDarkMode info from local storage and return ThemeMode
//   ThemeData? get theme => loadTheme();

//   /// Load isDArkMode from local storage and if it's empty, returns false (that means default theme is light)
//   bool _loadThemeFromBox() => themeBox.read(_themeKey);

//   /// Switch theme and save to local storage
//   void chooseRedTheme() {
//     Get.changeTheme(Themes.red);
//     themeBox.write(_themeKey, 'redTheme');
//   }

//   chooseBlueTheme() {
//     Get.changeTheme(Themes.blue);
//     themeBox.write(_themeKey, 'blueTheme');
//   }

//   chooseGreenTheme() {
//     Get.changeTheme(Themes.green);
//     themeBox.write(_themeKey, 'greenTheme');
//   }

//   loadTheme() {
//     themeBox.read<String>(_themeKey);

//     if (_themeKey == 'redTheme') {
//       chooseRedTheme();
//     } else if (_themeKey == 'greenTheme') {
//       chooseGreenTheme();
//     } else if (_themeKey == 'blueTheme') {
//       chooseBlueTheme();
//     }
//   }
// }
