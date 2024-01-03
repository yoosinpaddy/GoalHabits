import 'package:floor/floor.dart';

enum Priority { low, medium, high }

@entity
class Goal {
  @primaryKey
  final int? id;
  final String name;
  final String? description;
  final Priority? priority;
  final DateTime deadline;
  final bool isDone;
  final DateTime createdAt;
  final DateTime updatedAt;

  Goal(this.id, this.name, this.description, this.priority, this.deadline, this.isDone, this.createdAt, this.updatedAt);

  factory Goal.optional(
      {int? id,
      required String name,
      String? description,
      Priority? priority,
      required DateTime deadline,
      required bool isDone,
      required DateTime createdAt,
      required DateTime updatedAt}) {
    return Goal(id, name, description, priority, deadline, isDone, createdAt, updatedAt);
  }

  @override
  String toString() {
    return 'Goal{id: $id, name: $name, description: $description, priority: $priority, deadline: $deadline, isDone: $isDone, createdAt: $createdAt, updatedAt: $updatedAt}';
  }
}