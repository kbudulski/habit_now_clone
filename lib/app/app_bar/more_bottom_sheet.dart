import 'package:flutter/material.dart';
import 'package:habit_now_clone/app/drawer/rate_app_dialog.dart';
import 'package:habit_now_clone/i18n/en/strings.g.dart';
import 'package:styleguide/style.dart';

void showMoreBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: AppShapes.circularBorderTop16,
    barrierColor: Colors.black.withOpacity(0.8),
    builder: (_) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: const Icon(Icons.autorenew),
          title: Text(t.backups),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.lock_outlined),
          title: Text(t.lock_pin),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.star_border),
          title: Text(t.rate_app),
          onTap: () {
            Navigator.of(context).pop();
            showRateAppDialog(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.feedback_outlined),
          title: Text(t.contact_us),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.tune),
          title: Text(t.settings),
          onTap: () {},
        ),
      ],
    ),
  );
}
