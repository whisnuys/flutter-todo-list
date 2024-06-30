import 'package:flutter/material.dart';
import 'package:flutter_todo_app/app/data/models/task.dart';
import 'package:flutter_todo_app/app/data/services/storage/storage_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  StorageRepository storageRepository;
  HomeController({required this.storageRepository});

  final formKey = GlobalKey<FormState>();
  final editController = TextEditingController();
  final chipIndex = 0.obs;
  final tasks = <Task>[].obs;

  @override
  void onInit() {
    super.onInit();
    tasks.assignAll(storageRepository.readTasks());
    ever(tasks, (_) => storageRepository.writeTasks(tasks));
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeChipIndex(int index) {
    chipIndex.value = index;
  }

  bool addTask(Task task) {
    if (tasks.contains(task)) {
      return false;
    }
    tasks.add(task);
    return true;
  }
}
