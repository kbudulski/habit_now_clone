import 'package:repository/src/models/checkable.dart';

class Task extends Checkable {
  const Task({
    required super.name,
    required super.category,
    this.recurring = false,
    super.progress = Progress.neutral,
    super.type = Type.task,
  });

  final bool recurring;
}
