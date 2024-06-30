import 'package:flutter_todo_app/app/data/providers/task_provider.dart';
import 'package:flutter_todo_app/app/data/services/storage/storage_repository.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        storageRepository: StorageRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
