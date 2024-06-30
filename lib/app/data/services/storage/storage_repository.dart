import 'package:flutter_todo_app/app/data/providers/task_provider.dart';

import '../../models/task.dart';

class StorageRepository {
  TaskProvider taskProvider;
  StorageRepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
