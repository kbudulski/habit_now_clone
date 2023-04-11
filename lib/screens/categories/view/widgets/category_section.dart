import 'package:flutter/material.dart';
import 'package:habit_now_clone/screens/categories/view/widgets/scrollable_category_list_view.dart';
import 'package:repository/repository.dart';
import 'package:styleguide/style.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    required this.title,
    required this.subtitle,
    required this.categoryList,
    this.restoreIcon,
    super.key,
  });

  final String title;
  final String subtitle;
  final List<Category> categoryList;
  final Widget? restoreIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(Dimens.size16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  AppSpaces.gap04,
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              if (restoreIcon != null) restoreIcon!,
            ],
          ),
        ),
        ScrollableCategoryListView(categoryList),
      ],
    );
  }
}
