import 'package:flutter/material.dart';
import 'package:repository/repository.dart';
import 'package:styleguide/style.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({required this.progress, super.key});

  final Progress progress;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _checkboxBackgroundColor,
        ),
        margin: const EdgeInsets.all(Dimens.size04),
        duration: AppTimes.millis400,
        curve: Curves.fastLinearToSlowEaseIn,
        width: Dimens.size24,
        height: Dimens.size24,
        child: _checkboxIcon,
      );

  Icon? get _checkboxIcon {
    switch (progress) {
      case Progress.done:
        return const Icon(
          Icons.check,
          color: Colors.green,
          size: Dimens.size16,
        );
      case Progress.failed:
        return const Icon(
          Icons.close,
          color: Colors.red,
          size: Dimens.size16,
        );
      case Progress.late:
        return const Icon(
          Icons.schedule,
          color: Colors.orange,
          size: Dimens.size16,
        );
      case Progress.neutral:
        return null;
    }
  }

  Color get _checkboxBackgroundColor {
    switch (progress) {
      case Progress.done:
        return Colors.green.withOpacity(0.2);
      case Progress.failed:
        return Colors.red.withOpacity(0.2);
      case Progress.late:
        return Colors.orange.withOpacity(0.2);
      case Progress.neutral:
        return Colors.grey.withOpacity(0.2);
    }
  }
}
