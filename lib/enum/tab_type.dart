import 'package:flutter/material.dart';
import 'package:tab_flutter/home/home_navigator.dart';
import 'package:tab_flutter/love/love_navigator.dart';
import 'package:tab_flutter/report/report_navigator.dart';
import 'package:tab_flutter/setting/setting_navigator.dart';

final _homeGlobalKey = GlobalKey<NavigatorState>();
final _loveGlobalKey = GlobalKey<NavigatorState>();
final _reportGlobalKey = GlobalKey<NavigatorState>();
final _settingGlobalKey = GlobalKey<NavigatorState>();

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

  GlobalKey<NavigatorState> get globalKey {
    switch (this) {
      case TabType.home:
        return _homeGlobalKey;
      case TabType.love:
        return _loveGlobalKey;
      case TabType.report:
        return _reportGlobalKey;
      case TabType.setting:
        return _settingGlobalKey;
    }
  }

  Widget get navigator {
    switch (this) {
      case TabType.home:
        return HomeNavigator();
      case TabType.love:
        return LoveNavigator();
      case TabType.report:
        return ReportNavigator();
      case TabType.setting:
        return SettingNavigator();
    }
  }
}
