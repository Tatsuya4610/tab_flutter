import 'package:flutter/material.dart';
import 'package:tab_flutter/enum/tab_type.dart';
import 'package:tab_flutter/home/home_screen.dart';

class HomeNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: TabType.home.globalKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<dynamic>(
          settings: settings,
          builder: (BuildContext context) {
            return HomeScreen();
          },
        );
      },
    );
  }
}
