import 'package:flutter/material.dart';

import 'package:tab_flutter/enum/tab_type.dart';

class TabIcon extends StatelessWidget {
  const TabIcon({
    required this.type,
    required this.isSelected,
  });

  final TabType type;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected ? _SelectedIcon(type) : _NormalIcon(type);
  }
}

const _size = 26.0;

class _NormalIcon extends StatelessWidget {
  const _NormalIcon(this.type);

  final TabType type;

  @override
  Widget build(BuildContext context) {
    return Icon(
      type.iconData,
      size: _size,
    );
  }
}

class _SelectedIcon extends StatelessWidget {
  const _SelectedIcon(this.type);

  final TabType type;

  @override
  Widget build(BuildContext context) {
    return Icon(
      type.iconData,
      size: _size,
    );
  }
}
