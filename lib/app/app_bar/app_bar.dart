import 'package:flutter/material.dart';
import 'package:habit_now_clone/app/app_bar/animated_title.dart';
import 'package:habit_now_clone/app/app_bar/more_bottom_sheet.dart';
import 'package:habit_now_clone/providers/navigation_provider.dart';
import 'package:provider/provider.dart';
import 'package:styleguide/style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
        title: const AnimatedTitle(),
        titleSpacing: 0,
        elevation: 0,
        actions: [
          _buildSearchButton(),
          _buildAnimatedCalendarIconButton(context),
          _buildMoreIconButton(context),
        ],
      );

  IconButton _buildSearchButton() => IconButton(
        icon: const Icon(Icons.search),
        visualDensity: VisualDensity.compact,
        onPressed: () {},
      );

  AnimatedSize _buildAnimatedCalendarIconButton(BuildContext context) {
    return AnimatedSize(
      duration: AppTimes.millis200,
      child: context.watch<NavigationProvider>().currentIndex == 0
          ? IconButton(
              icon: const Icon(Icons.calendar_today_outlined),
              visualDensity: VisualDensity.compact,
              iconSize: Dimens.size20,
              onPressed: () {},
            )
          : Container(),
    );
  }

  IconButton _buildMoreIconButton(BuildContext context) => IconButton(
        icon: const Icon(Icons.more_vert),
        visualDensity: VisualDensity.compact,
        onPressed: () => showMoreBottomSheet(context),
      );
}
