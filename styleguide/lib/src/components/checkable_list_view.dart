import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:repository/repository.dart';
import 'package:styleguide/src/components/checkable_list_tile.dart';
import 'package:styleguide/src/components/habit_list_tile.dart';
import 'package:styleguide/style.dart';

enum ScreenMode { today, habits, tasks }

class CheckableListView extends StatelessWidget {
  const CheckableListView(
    this.list, {
    required this.mode,
    super.key,
  });

  final List<Checkable> list;
  final ScreenMode mode;

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.separated(
        padding: _listPadding,
        separatorBuilder: (_, __) => _buildDivider(),
        itemCount: list.length,
        itemBuilder: (_, int index) => AnimationConfiguration.staggeredList(
          position: index,
          duration: AppTimes.millis200,
          child: FadeInAnimation(
            child: ScaleAnimation(
              scale: 0.95,
              child: _buildListTile(index),
            ),
          ),
        ),
      ),
    );
  }

  EdgeInsets get _listPadding => mode == ScreenMode.habits
      ? const EdgeInsets.all(Dimens.size12)
      : EdgeInsets.zero;

  StatelessWidget _buildListTile(int index) => mode == ScreenMode.habits
      ? HabitListTile(habit: list[index] as Habit)
      : CheckableListTile(checkable: list[index], mode: mode);

  StatelessWidget _buildDivider() =>
      mode == ScreenMode.habits ? AppSpaces.gap12 : Container();
}
