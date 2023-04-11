import 'package:flutter/material.dart';
import 'package:habit_now_clone/i18n/en/strings.g.dart';
import 'package:styleguide/style.dart';

class RestoreDefaultsDialog extends StatelessWidget {
  const RestoreDefaultsDialog({super.key});

  @override
  Widget build(BuildContext context) => AlertDialog(
        contentPadding: const EdgeInsets.all(Dimens.size12),
        buttonPadding: EdgeInsets.zero,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              t.restore_categories_question,
              style: const TextStyle(color: AppColors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: [
          const Divider(),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(t.cancel.toUpperCase()),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    t.confirm.toUpperCase(),
                    style: const TextStyle(color: AppColors.orange),
                  ),
                ),
              ),
            ],
          )
        ],
      );
}
