import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tab_flutter/enum/tab_type.dart';
import 'package:tab_flutter/tab/tab_icon.dart';

class TabsScreen extends HookWidget {
  BottomNavigationBarItem createTab(BuildContext context, TabType type) {
    return BottomNavigationBarItem(
      icon: TabIcon(
        type: type,
        isSelected: false,
      ),
      activeIcon: TabIcon(
        type: type,
        isSelected: true,
      ),
      label: type.displayString,
    );
  }

  @override
  Widget build(BuildContext context) {
    final tabType = useValueNotifier(TabType.home);
    return ValueListenableBuilder<TabType>(
      valueListenable: tabType,
      builder: (ctx, type, _) => Scaffold(
        body: IndexedStack(
          index: type.index,
          children: TabType.values.map((type) => type.navigator).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: TabType.values.map((type) => createTab(ctx, type)).toList(),
          onTap: (value) {
            final selectedTab = TabType.values[value];

            tabType.value = selectedTab;
          },
          currentIndex: type.index,
        ),
      ),
    );
  }
}
