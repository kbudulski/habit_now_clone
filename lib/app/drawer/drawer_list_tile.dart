import 'package:flutter/material.dart';
import 'package:styleguide/style.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    required this.name,
    required this.icon,
    this.selected = false,
    this.onTap,
    super.key,
  });

  final String name;
  final IconData icon;
  final VoidCallback? onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) => ListTileTheme(
        horizontalTitleGap: 0,
        textColor: AppColors.grey,
        selectedColor: AppColors.orange,
        selectedTileColor: AppColors.orange.withOpacity(0.2),
        style: ListTileStyle.drawer,
        shape: AppShapes.circularBorder04,
        dense: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.size08),
          child: ListTile(
            selected: selected,
            visualDensity: VisualDensity.compact,
            leading: Icon(icon),
            onTap: onTap,
            title: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
}
