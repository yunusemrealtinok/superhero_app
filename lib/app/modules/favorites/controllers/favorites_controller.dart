import 'package:get/get.dart';
import 'package:superhero_app/app/hero_model.dart';

import '../../../hero.dart';

class FavoritesController extends GetxController {
  final List<HeroModel> heroes = [
    HeroModel.fromJson((response['results'] as List)[0]),
    HeroModel.fromJson((response['results'] as List)[0]),

    // Add more heroes here
  ];

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
