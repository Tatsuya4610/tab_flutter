import 'package:flutter/material.dart';
import 'package:tab_flutter/enum/tab_type.dart';
import 'package:tab_flutter/setting/setting_screen.dart';

class SettingNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: TabType.setting.globalKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<dynamic>(
          settings: settings,
          builder: (BuildContext context) {
            return SettingScreen();
          },
        );
      },
    );
  }
}
