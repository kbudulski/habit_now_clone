import 'package:repository/repository.dart';

enum Progress { neutral, done, failed, late }

enum Type { task, habit }

abstract class Checkable {
  const Checkable({
    required this.name,
    required this.category,
    required this.type,
    required this.progress,
    this.reminder,
  });

  final String name;
  final Category category;
  final Type type;
  final Progress progress;
  final String? reminder;
}
