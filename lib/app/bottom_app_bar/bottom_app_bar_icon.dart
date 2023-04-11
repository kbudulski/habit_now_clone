import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habit_now_clone/providers/navigation_provider.dart';
import 'package:habit_now_clone/utils/navigation.dart';
import 'package:provider/provider.dart';
import 'package:styleguide/style.dart';
import 'package:vrouter/vrouter.dart';

class BottomAppBarIcon extends StatelessWidget {
  const BottomAppBarIcon({
    required this.name,
    required this.icon,
    required this.index,
    super.key,
  });

  final String name;
  final IconData icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(Dimens.size12),
        onTap: () => _onBarIconTap(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Dimens.size08),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FaIcon(
                icon,
                size: Dimens.size20,
                color: _selectionColor(context),
              ),
              AppSpaces.gap08,
              Text(
                name,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: _selectionColor(context)),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onBarIconTap(BuildContext context) {
    if (index == 0) {
      context.vRouter.to(Paths.today);
    } else if (index == 1) {
      context.vRouter.to(Paths.habits);
    } else if (index == 2) {
      context.vRouter.to(Paths.tasks);
    } else if (index == 3) {
      context.vRouter.to(Paths.categories);
    }
    context.read<NavigationProvider>().updateTab(index);
  }

  Color _selectionColor(BuildContext context) =>
      context.watch<NavigationProvider>().currentIndex == index
          ? AppColors.orange
          : AppColors.grey;
}
