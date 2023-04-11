import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habit_now_clone/app/drawer/drawer_list_tile.dart';
import 'package:habit_now_clone/app/drawer/rate_app_dialog.dart';
import 'package:habit_now_clone/app/drawer/title_and_date_section.dart';
import 'package:habit_now_clone/i18n/en/strings.g.dart';
import 'package:habit_now_clone/utils/navigation.dart';
import 'package:styleguide/style.dart';
import 'package:vrouter/vrouter.dart';

const double _kDrawerWidth = 264;

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: _kDrawerWidth,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const TitleAndDateSection(),
          AppSpaces.gap24,
          DrawerListTile(
            name: t.home,
            icon: Icons.home,
            selected: true,
          ),
          DrawerListTile(
            name: t.categories,
            icon: FontAwesomeIcons.tableCellsLarge,
            onTap: () {
              Navigator.of(context).pop();
              context.vRouter.to(Paths.categories);
            },
          ),
          AppSpaces.gap24,
          DrawerListTile(
            name: t.customize,
            icon: Icons.format_color_fill,
            onTap: () {},
          ),
          DrawerListTile(
            name: t.settings,
            icon: Icons.tune,
            onTap: () {},
          ),
          AppSpaces.gap24,
          DrawerListTile(
            name: t.premium,
            icon: Icons.verified,
            onTap: () {},
          ),
          DrawerListTile(
            name: t.rate_app,
            icon: Icons.star,
            onTap: () async {
              Navigator.of(context).pop();
              showRateAppDialog(context);
            },
          ),
          DrawerListTile(
            name: t.contact_us,
            icon: Icons.feedback_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
