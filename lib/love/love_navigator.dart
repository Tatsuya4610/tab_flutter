import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tab_flutter/enum/tab_type.dart';

import 'love_screen.dart';

class LoveNavigator extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: TabType.love.globalKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<dynamic>(
          settings: settings,
          builder: (BuildContext context) {
            return LoveScreen();
          },
        );
      },
    );
  }
}
