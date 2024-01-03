
import 'package:flutter_test/flutter_test.dart';
import 'package:goal_habits/controllers/dao/goals_dao.dart';
import 'package:goal_habits/controllers/database.dart';
import 'package:goal_habits/models/goals.dart';

void main() {
  late FlutterDatabase database;
  late GoalDao goalDao;

  setUp(() async {
    database = await $FloorFlutterDatabase.inMemoryDatabaseBuilder().build();
    goalDao = database.goalDao;
  });

  tearDown(() async {
    await database.close();
  });
  test('goal should be created and saved', () {
    final goal = Goal(
      null,
      'test',
      'test description',
      Priority.low,
      DateTime.now(),
      false,
      DateTime.now(),
      DateTime.now(),
    );
    goalDao.insertGoal(goal);
    final goals = goalDao.findAllGoals();
    expect(goals, isNotEmpty);

  });
}