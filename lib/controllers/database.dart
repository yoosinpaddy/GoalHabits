import 'package:floor/floor.dart';
import 'package:goal_habits/controllers/dao/goals_dao.dart';
import 'package:goal_habits/controllers/type_converter.dart';
import 'package:goal_habits/models/goals.dart';

part 'database.g.dart';

@Database(version: 1, entities: [Goal])
@TypeConverters([DateTimeConverter, PriorityConverter])
abstract class FlutterDatabase extends FloorDatabase {
  GoalDao get goalDao;
}