import 'package:flutter/material.dart';

class ColoredTabBar extends Container implements PreferredSizeWidget {
  ColoredTabBar({
    required Color super.color,
    required this.tabBar,
    Widget? extraWidget,
    super.key,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              tabBar,
              if (extraWidget != null) extraWidget,
            ],
          ),
        );

  @override
  Size get preferredSize => tabBar.preferredSize;

  final TabBar tabBar;
}
