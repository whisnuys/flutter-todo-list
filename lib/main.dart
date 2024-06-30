import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/data/services/storage/storage_service.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(
    GetMaterialApp(
      title: "Flutter Todo List",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
