import 'package:flutter/material.dart';
import 'package:habit_now_clone/i18n/en/strings.g.dart';
import 'package:habit_now_clone/utils/mocks/mock_habits.dart';
import 'package:repository/repository.dart';
import 'package:styleguide/components.dart';
import 'package:styleguide/style.dart';

class HabitsView extends StatelessWidget {
  const HabitsView({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: ColoredTabBar(
            color: AppColors.darkerGrey,
            tabBar: TabBar(
              labelPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.size12,
              ),
              isScrollable: true,
              labelStyle: Theme.of(context).textTheme.bodySmall,
              tabs: [
                Tab(text: t.active_habits, height: Dimens.size32),
                Tab(text: t.archived, height: Dimens.size32),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              _buildActiveHabitsList(),
              _buildArchivedHabitsList(),
            ],
          ),
        ),
      );

  Widget _buildActiveHabitsList() => CheckableListView(
        mockHabitsList.where((Habit habit) => !habit.archived).toList(),
        mode: ScreenMode.habits,
      );

  Widget _buildArchivedHabitsList() => CheckableListView(
        mockHabitsList.where((Habit habit) => habit.archived).toList(),
        mode: ScreenMode.habits,
      );
}
