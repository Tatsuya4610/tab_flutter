import 'package:flutter/material.dart';
import 'package:tab_flutter/home/home_screen.dart';
import 'package:tab_flutter/love/love_screen.dart';
import 'package:tab_flutter/report/report_screen.dart';
import 'package:tab_flutter/setting/setting_screen.dart';



enum TabType {
  home,
  love,
  report,
  setting,
}

extension TabTypeEx on TabType {
  String get displayString {
    switch (this) {
      case TabType.home:
        return 'Home';
      case TabType.love:
        return 'Love';
      case TabType.report:
        return 'Report';
      case TabType.setting:
        return 'Setting';
    }
  }

  IconData get iconData {
    switch (this) {
      case TabType.home:
        return Icons.home;
      case TabType.love:
        return Icons.favorite;
      case TabType.report:
        return Icons.report;
      case TabType.setting:
        return Icons.settings;
    }
  }


  Widget get navigator {
    switch (this) {
      case TabType.home:
        return HomeScreen();
      case TabType.love:
        return LoveScreen();
      case TabType.report:
        return ReportScreen();
      case TabType.setting:
        return SettingScreen();
    }
  }
}
