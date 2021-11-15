import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:themes_project/ui/layout/layout.dart';
import 'package:themes_project/ui/pages/theme_setting_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'title'.toUpperCase(),
            style: context.theme.textTheme.headline1,
          ),
          GestureDetector(
            onTap: () {
              Get.to(const ThemeSettingPage());
            },
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.theme.colorScheme.primary,
              ),
              child: Center(
                  child: Text(
                'Choose Theme',
                textAlign: TextAlign.center,
                style: context.textTheme.button,
              )),
            ),
          )
        ],
      ),
    );
  }
}
