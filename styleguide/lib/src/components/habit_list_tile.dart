import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:repository/repository.dart';
import 'package:styleguide/components.dart';
import 'package:styleguide/style.dart';
import 'package:table_calendar/table_calendar.dart';

class HabitListTile extends StatelessWidget {
  const HabitListTile({required this.habit, super.key});

  final Habit habit;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.size08,
          horizontal: Dimens.size12,
        ),
        decoration: BoxDecoration(
          color: AppColors.darkerGrey,
          borderRadius: BorderRadius.circular(Dimens.size12),
        ),
        child: Column(
          children: [
            _buildInfoAndIconRow(context),
            AppSpaces.gap16,
            _buildTableCalendar(),
            AppSpaces.gap16,
            _buildBottomInfoAndIconsRow(context),
          ],
        ),
      );

  Row _buildInfoAndIconRow(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                VerticalDivider(
                  color: habit.category.color,
                  width: Dimens.size16,
                  thickness: Dimens.size02,
                  indent: Dimens.size02,
                  endIndent: Dimens.size02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      habit.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    AppSpaces.gap02,
                    Text(
                      habit.occurrence.formatted,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CategoryIcon(
            icon: habit.category.icon,
            color: habit.category.color,
            size: Dimens.size12,
          ),
        ],
      );

  TableCalendar<DateTime> _buildTableCalendar() => TableCalendar<DateTime>(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        calendarFormat: CalendarFormat.week,
        headerVisible: false,
        rowHeight: Dimens.size32,
        calendarBuilders: CalendarBuilders<DateTime>(
          dowBuilder: (_, DateTime day) => Container(
            alignment: Alignment.center,
            color: AppColors.darkerGrey,
            child: Text(
              DateFormat.E().format(day),
              style: const TextStyle(color: AppColors.grey, fontSize: 10),
            ),
          ),
          todayBuilder: (_, DateTime day, __) => Container(
            width: Dimens.size32,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.2),
              border: Border.all(
                width: 1.5,
                color: Colors.green,
              ),
              borderRadius: BorderRadius.circular(Dimens.size12),
            ),
            child: Text(
              DateFormat.d().format(day),
              style: const TextStyle(fontSize: 10),
            ),
          ),
          outsideBuilder: (_, DateTime day, __) => Container(
            width: Dimens.size32,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.2),
              border: Border.all(
                width: 1.5,
                color: Colors.orange,
              ),
              borderRadius: BorderRadius.circular(Dimens.size12),
            ),
            child: Text(
              DateFormat.d().format(day),
              style: const TextStyle(fontSize: 10),
            ),
          ),
        ),
      );

  Widget _buildBottomInfoAndIconsRow(BuildContext context) => Padding(
        padding: const EdgeInsetsDirectional.only(start: Dimens.size08),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                _buildChainScore(context),
                AppSpaces.gap08,
                _buildPercentageScore(context),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.calendar_today_outlined,
                    size: 18,
                  ),
                  visualDensity: VisualDensity.compact,
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                ),
                AppSpaces.gap12,
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.assessment_outlined,
                    size: Dimens.size20,
                  ),
                  visualDensity: VisualDensity.compact,
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.zero,
                ),
                AppSpaces.gap08,
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    size: Dimens.size20,
                  ),
                  visualDensity: VisualDensity.compact,
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
          ],
        ),
      );

  Widget _buildChainScore(BuildContext context) => Row(
        children: [
          Icon(
            FontAwesomeIcons.link,
            size: 11,
            color: habit.category.color,
          ),
          const SizedBox(width: 6),
          Text(
            '2',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      );

  Widget _buildPercentageScore(BuildContext context) => Row(
        children: [
          Icon(
            FontAwesomeIcons.circleCheck,
            size: 11,
            color: habit.category.color,
          ),
          AppSpaces.gap04,
          //AppSpaces.gap04,
          Text(
            '57%',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      );
}
