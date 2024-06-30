import 'dart:convert';

import 'package:flutter_todo_app/app/data/utils/keys.dart';
import 'package:get/get.dart';

import '../models/task.dart';
import '../services/storage/storage_service.dart';

class TaskProvider {
  final _storage = Get.find<StorageService>();

  //example data for local storage
  // {tasks': [
  //     {'title': 'Worl',
  //       'color': '#756BFC',
  //       'icon': 0xe900,}
  // ]}

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((task) => tasks.add(Task.fromJson(task)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
