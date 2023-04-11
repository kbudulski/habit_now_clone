import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habit_now_clone/app/bottom_app_bar/bottom_app_bar_icon.dart';
import 'package:habit_now_clone/i18n/en/strings.g.dart';
import 'package:styleguide/style.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          BottomAppBarIcon(
            name: t.today,
            icon: FontAwesomeIcons.rectangleList,
            index: 0,
          ),
          BottomAppBarIcon(
            name: t.habits,
            icon: FontAwesomeIcons.trophy,
            index: 1,
          ),
          AppSpaces.gap56,
          BottomAppBarIcon(
            name: t.tasks,
            icon: FontAwesomeIcons.circleCheck,
            index: 2,
          ),
          BottomAppBarIcon(
            name: t.categories,
            icon: FontAwesomeIcons.tableCellsLarge,
            index: 3,
          ),
        ],
      ),
    );
  }
}
