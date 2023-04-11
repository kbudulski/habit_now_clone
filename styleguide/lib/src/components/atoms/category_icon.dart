import 'package:flutter/material.dart';
import 'package:styleguide/style.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({
    required this.icon,
    required this.color,
    this.size = Dimens.size16,
    this.radius = Dimens.size08,
    super.key,
  });

  final IconData icon;
  final Color color;
  final double size;
  final double radius;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: AppColors.darkGrey,
        ),
        child: Padding(
          padding: const EdgeInsets.all(Dimens.size08),
          child: Icon(icon, color: color, size: size),
        ),
      );
}
