import 'package:flutter/material.dart';
import 'package:habit_now_clone/i18n/en/strings.g.dart';
import 'package:repository/repository.dart';
import 'package:styleguide/components.dart';
import 'package:styleguide/style.dart';

class ScrollableCategoryListView extends StatelessWidget {
  const ScrollableCategoryListView(this.categoryList, {super.key});

  final List<Category> categoryList;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: Dimens.size100,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.size08),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: _buildCategoryListItem,
        ),
      );

  Padding _buildCategoryListItem(BuildContext context, int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.size08),
        child: SizedBox(
          width: Dimens.size44 + Dimens.size16,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CategoryIcon(
                icon: categoryList[index].icon,
                color: categoryList[index].color,
                size: Dimens.size44,
                radius: Dimens.size16,
              ),
              AppSpaces.gap04,
              Text(
                categoryList[index].name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AppSpaces.gap02,
              Text(
                t.entry(n: categoryList[index].entryCount),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 10),
              ),
            ],
          ),
        ),
      );
}
