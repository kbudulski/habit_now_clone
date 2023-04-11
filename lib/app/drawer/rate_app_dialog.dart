import 'package:flutter/material.dart';
import 'package:habit_now_clone/i18n/en/strings.g.dart';
import 'package:styleguide/style.dart';

void showRateAppDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      contentPadding: EdgeInsets.zero,
      buttonPadding: EdgeInsets.zero,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTitleSection(),
          _buildHeartSection(),
        ],
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(t.not_really.toUpperCase()),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  t.love_it.toUpperCase(),
                  style: const TextStyle(color: AppColors.orange),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Padding _buildTitleSection() => Padding(
      padding: const EdgeInsets.all(Dimens.size12),
      child: Text(
        t.do_you_like_app,
        style: const TextStyle(color: AppColors.grey),
      ),
    );

Padding _buildHeartSection() => Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.size16),
      child: Container(
        padding: const EdgeInsets.all(Dimens.size08),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.darkGrey,
        ),
        child: ShaderMask(
          shaderCallback: (Rect bounds) => const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [AppColors.darkRed, AppColors.lightRed],
          ).createShader(bounds),
          child: const Icon(
            Icons.favorite,
            color: Colors.white,
            size: Dimens.size56,
          ),
        ),
      ),
    );
