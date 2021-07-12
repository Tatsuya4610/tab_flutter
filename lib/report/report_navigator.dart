import 'package:flutter/material.dart';
import 'package:tab_flutter/enum/tab_type.dart';
import 'package:tab_flutter/report/report_screen.dart';

class ReportNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: TabType.report.globalKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<dynamic>(
          settings: settings,
          builder: (BuildContext context) {
            return ReportScreen();
          },
        );
      },
    );
  }
}
