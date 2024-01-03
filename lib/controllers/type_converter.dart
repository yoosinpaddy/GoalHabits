import 'package:floor/floor.dart';
import 'package:goal_habits/models/goals.dart';

class DateTimeConverter extends TypeConverter<DateTime,int>{
  @override
  DateTime decode(int databaseValue) {
    return DateTime.fromMillisecondsSinceEpoch(databaseValue);
  }

  @override
  int encode(DateTime value) {
    return value.millisecondsSinceEpoch;
  }
}

class PriorityConverter extends TypeConverter<Priority,int>{
  @override
  Priority decode(int databaseValue) {
    return Priority.values[databaseValue];
  }

  @override
  int encode(Priority value) {
    return value.index;
  }
}