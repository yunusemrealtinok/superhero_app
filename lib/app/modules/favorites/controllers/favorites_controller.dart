import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:superhero_app/app/hero_model.dart';

import '../../../hero.dart';
import '../../../managers/hive_manager.dart';
import '../../../routes/app_pages.dart';
import '../../home/controllers/home_controller.dart';

class FavoritesController extends GetxController {
  RxList<HeroModel> heroes = HiveManager.instance.getFavorites.obs;

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

  void updateHeroes() {
    heroes.value = HiveManager.instance.getFavorites;
  }

  void onTapFavoriteCard(int index) {
    Get.toNamed(Routes.INFO_PAGE,
        arguments: {'heroModel': heroes.value.elementAt(index)});
  }

  Future<void> onTapFavoriteStar(int index) async {
    final c = Get.put(HomeController());
    await HiveManager.instance.deleteFavorite(heroes.elementAt(index));
    updateHeroes();
    c.updateFavorites();
  }
}
