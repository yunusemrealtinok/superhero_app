import 'package:get/get.dart';
import 'package:superhero_app/app/hero_model.dart';

class InfoPageController extends GetxController {
  //TODO: Implement InfoPageController
  HeroModel heroModel = Get.arguments['heroModel'];
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
