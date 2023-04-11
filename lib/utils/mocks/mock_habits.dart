import 'package:habit_now_clone/utils/mocks/mock_categories.dart';
import 'package:repository/repository.dart';

const List<Habit> mockHabitsList = [
  Habit(
    name: 'Do not drink alcohol',
    category: quitBadHabitCategory,
    progress: Progress.late,
    reminder: '12:00',
  ),
  Habit(
    name: 'Drink at least 8 glasses of water',
    category: healthCategory,
    progress: Progress.failed,
  ),
  Habit(
    name: 'Read at least 20 pages',
    category: studyCategory,
  ),
];
