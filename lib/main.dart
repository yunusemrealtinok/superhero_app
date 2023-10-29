import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:superhero_app/app/managers/hive_manager.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await HiveManager.instance.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.dark(),
    ),
  );
}
