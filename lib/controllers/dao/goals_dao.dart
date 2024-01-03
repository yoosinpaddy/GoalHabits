import 'package:floor/floor.dart';
import 'package:goal_habits/models/goals.dart';

@dao
abstract class GoalDao {
  @Query('SELECT * FROM Goal')
  Future<List<Goal>> findAllGoals();

  @Query('SELECT * FROM Goal WHERE id = :id')
  Future<Goal?> findGoalById(int id);

  @Query('SELECT * FROM Goal WHERE nam  e = :name')
  Future<Goal?> findGoalByName(String name);

  @Query('SELECT * FROM Goal WHERE isDone = :isDone')
  Future<List<Goal>> findGoalsByIsDone(bool isDone);

  @Query('SELECT * FROM Goal WHERE priority = :priority')
  Future<List<Goal>> findGoalsByPriority(int priority);

  @Query('SELECT * FROM Goal WHERE deadline = :deadline')
  Future<List<Goal>> findGoalsByDeadline(DateTime deadline);

  @Query('SELECT * FROM Goal WHERE createdAt = :createdAt')
  Future<List<Goal>> findGoalsByCreatedAt(DateTime createdAt);

  @Query('SELECT * FROM Goal WHERE updatedAt = :updatedAt')
  Future<List<Goal>> findGoalsByUpdatedAt(DateTime updatedAt);

  @insert
  Future<void> insertGoal(Goal goal);

  @insert
  Future<List<int>> insertGoals(List<Goal> goals);

  @update
  Future<void> updateGoal(Goal goal);

  @update
  Future<void> updateGoals(List<Goal> goals);

  @delete
  Future<void> deleteGoal(Goal goal);

  @delete
  Future<void> deleteGoals(List<Goal> goals);
}