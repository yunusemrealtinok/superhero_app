import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superhero_app/app/data/hero_repository.dart';
import 'package:superhero_app/app/managers/hive_manager.dart';
import 'package:superhero_app/app/modules/favorites/controllers/favorites_controller.dart';

import '../../../hero_model.dart';
import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final HeroRepository heroRepository = HeroRepository.instance;

  RxList<HeroModel> heroModelList = <HeroModel>[].obs;

  RxList<bool> isFavoriteList = <bool>[].obs;

  RxBool refreshed = false.obs;

  Future<void> searchHeroAndUpdateModel(String heroName) async {
    heroModelList.value = await heroRepository.dioFetchHeroList(heroName);
    isFavoriteList.clear();
    for (var element in heroModelList) {
      bool isFavorite = await checkIsFavorite(element);
      isFavoriteList.add(isFavorite);
    }
  }

  Future<bool> checkIsFavorite(HeroModel heroModel) async {
    return HiveManager.instance.getFavorites.contains(heroModel);
  }

  Future<void> onTapStar(int index) async {
    final a = Get.put(FavoritesController());
    refreshed.value = true;
    if (isFavoriteList[index] == false) {
      await HiveManager.instance.addFavorite(heroModelList.elementAt(index));
      isFavoriteList[index] = true;
    } else {
      await HiveManager.instance.deleteFavorite(heroModelList.elementAt(index));
      isFavoriteList[index] = false;
    }
    refreshed.value = false;
    a.updateHeroes();
    //TODO add corresponding logic
  }

  Future<void> updateFavorites() async {
    isFavoriteList.clear();
    for (var element in heroModelList) {
      bool isFavorite = await checkIsFavorite(element);
      isFavoriteList.add(isFavorite);
    }
  }

  void onTapCard(int index) {
    Get.toNamed(Routes.INFO_PAGE,
        arguments: {'heroModel': heroModelList.value.elementAt(index)});
  }
}
