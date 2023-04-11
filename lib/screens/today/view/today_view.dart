import 'package:flutter/material.dart';
import 'package:habit_now_clone/utils/mocks/mock_general.dart';
import 'package:intl/intl.dart';
import 'package:styleguide/components.dart';
import 'package:styleguide/style.dart';
import 'package:table_calendar/table_calendar.dart';

class TodayView extends StatelessWidget {
  const TodayView({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: const [
          TodayCalendarRow(),
          Expanded(
            child: CheckableListView(
              mergedMockList,
              mode: ScreenMode.today,
            ),
          ),
        ],
      );
}

class TodayCalendarRow extends StatelessWidget {
  const TodayCalendarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return TableCalendar<DateTime>(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
      calendarFormat: CalendarFormat.week,
      headerVisible: false,
      calendarStyle: const CalendarStyle(
        markersMaxCount: 1,
        todayDecoration: BoxDecoration(
          color: AppColors.orange,
          shape: BoxShape.circle,
        ),
        rowDecoration: BoxDecoration(
          color: AppColors.darkerGrey,
        ),
        selectedDecoration: BoxDecoration(
          color: AppColors.lightOrange,
          shape: BoxShape.circle,
        ),
      ),
      calendarBuilders: CalendarBuilders<DateTime>(
        dowBuilder: (_, DateTime day) => Container(
          alignment: Alignment.center,
          color: AppColors.darkerGrey,
          child: Text(
            DateFormat.E().format(day),
            style: const TextStyle(color: AppColors.grey),
          ),
        ),
      ),
    );
  }
}
