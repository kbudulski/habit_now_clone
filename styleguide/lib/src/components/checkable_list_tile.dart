import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:repository/repository.dart';
import 'package:styleguide/components.dart';
import 'package:styleguide/style.dart';

class CheckableListTile extends StatelessWidget {
  const CheckableListTile({
    required this.checkable,
    required this.mode,
    super.key,
  });

  final Checkable checkable;
  final ScreenMode mode;

  @override
  Widget build(BuildContext context) => Slidable(
        key: ValueKey<Checkable>(checkable),
        startActionPane: _buildStartActionPane(),
        endActionPane: _buildEndActionPane(),
        child: InkWell(
          onTap: () {},
          onLongPress: () {},
          child: Ink(
            color: AppColors.darkerGrey,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: Dimens.size08,
                horizontal: Dimens.size12,
              ),
              child: Row(
                children: [
                  _buildCategoryIcon(),
                  AppSpaces.gap08,
                  Expanded(child: _buildNameAndCategory(context)),
                  if (mode == ScreenMode.today) _buildCheckbox(),
                ],
              ),
            ),
          ),
        ),
      );

  ActionPane _buildStartActionPane() => ActionPane(
        extentRatio: 0.15,
        motion: const ScrollMotion(),
        children: <SlidableAction>[
          SlidableAction(
            onPressed: (_) {},
            backgroundColor: checkable.category.color,
            foregroundColor: AppColors.darkerGrey,
            icon: Icons.flag,
          ),
        ],
      );

  ActionPane _buildEndActionPane() => ActionPane(
        extentRatio: 0.15,
        motion: const ScrollMotion(),
        children: <SlidableAction>[
          SlidableAction(
            onPressed: (_) {},
            backgroundColor: checkable.category.color,
            foregroundColor: AppColors.darkerGrey,
            icon: Icons.edit,
          ),
        ],
      );

  Widget _buildCategoryIcon() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CategoryIcon(
            icon: checkable.category.icon,
            color: checkable.category.color,
          )
        ],
      );

  Widget _buildNameAndCategory(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildName(),
          if (mode == ScreenMode.today) _buildCategory(context),
        ],
      );

  Widget _buildName() => Text(
        checkable.name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      );

  Widget _buildCategory(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: Dimens.size02),
        child: Row(
          children: [
            Text(
              describeEnum(checkable.type),
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(color: checkable.category.color),
            ),
            if (checkable.reminder != null) _buildReminderInfo(context),
          ],
        ),
      );

  Widget _buildReminderInfo(BuildContext context) => Row(
        children: [
          AppSpaces.gap02,
          Icon(
            Icons.notifications_none,
            color: checkable.category.color,
            size: Dimens.size12,
          ),
          AppSpaces.gap04,
          Text(
            checkable.reminder!,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.grey, fontSize: 11),
          ),
        ],
      );

  Widget _buildCheckbox() => IgnorePointer(
        child: CustomCheckbox(progress: checkable.progress),
      );
}
