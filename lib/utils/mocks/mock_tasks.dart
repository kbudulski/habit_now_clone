import 'package:habit_now_clone/utils/mocks/mock_categories.dart';
import 'package:repository/repository.dart';

const List<Task> mockTasksList = [
  Task(
    name: 'Buy new dumbbells',
    category: sportsCategory,
  ),
  Task(
    name: 'Pass math exams',
    category: studyCategory,
  ),
  Task(
    name: 'Work meeting',
    category: taskCategory,
    progress: Progress.done,
  ),
];
