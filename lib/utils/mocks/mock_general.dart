import 'package:habit_now_clone/utils/mocks/mock_habits.dart';
import 'package:habit_now_clone/utils/mocks/mock_tasks.dart';
import 'package:repository/repository.dart';

const List<Checkable> mergedMockList = <Checkable>[
  ...mockTasksList,
  ...mockHabitsList,
];
