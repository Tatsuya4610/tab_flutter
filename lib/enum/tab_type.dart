import 'package:flutter/material.dart';
import 'package:tab_flutter/home/home_navigator.dart';
import 'package:tab_flutter/love/love_navigator.dart';
import 'package:tab_flutter/report/report_navigator.dart';
import 'package:tab_flutter/setting/setting_navigator.dart';

final _marketGlobalKey = GlobalKey<NavigatorState>();
final _mediaGlobalKey = GlobalKey<NavigatorState>();
final _listingGlobalKey = GlobalKey<NavigatorState>();
final _favoriteGlobalKey = GlobalKey<NavigatorState>();

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
        return _marketGlobalKey;
      case TabType.love:
        return _mediaGlobalKey;
      case TabType.report:
        return _listingGlobalKey;
      case TabType.setting:
        return _favoriteGlobalKey;
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
