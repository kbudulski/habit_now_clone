import 'package:flutter/material.dart';
import 'package:habit_now_clone/i18n/en/strings.g.dart';
import 'package:intl/intl.dart';
import 'package:styleguide/style.dart';

class TitleAndDateSection extends StatelessWidget {
  const TitleAndDateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + Dimens.size16,
        left: Dimens.size16,
        right: Dimens.size16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            t.habit_now_clone,
            style: const TextStyle(
              color: AppColors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
          AppSpaces.gap04,
          Text(
            DateFormat('EEEE').format(DateTime.now()),
            style: const TextStyle(
              color: AppColors.grey,
              fontSize: Dimens.size12,
            ),
          ),
          AppSpaces.gap02,
          Text(
            DateFormat('yMMMMd').format(DateTime.now()),
            style: const TextStyle(
              color: AppColors.grey,
              fontSize: Dimens.size12,
            ),
          ),
        ],
      ),
    );
  }
}
