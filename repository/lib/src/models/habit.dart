import 'package:repository/src/models/checkable.dart';

enum Occurrence { everyday, someDaysOfWeek, daysOfMonth, repeat }

class Habit extends Checkable {
  const Habit({
    required super.name,
    required super.category,
    this.archived = false,
    this.occurrence = Occurrence.everyday,
    super.progress = Progress.neutral,
    super.type = Type.habit,
    super.reminder,
  });

  final bool archived;
  final Occurrence occurrence;
}

extension OccurrenceExt on Occurrence {
  String get formatted {
    switch (this) {
      case Occurrence.everyday:
        return 'Every day';
      case Occurrence.someDaysOfWeek:
        return 'Monday, Wednesday, Friday';

      case Occurrence.daysOfMonth:
        return 'Fixed days: 1, 10';
      case Occurrence.repeat:
        return 'Every 2 days';
    }
  }
}
