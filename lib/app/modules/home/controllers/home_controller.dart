import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superhero_app/app/data/hero_repository.dart';
import 'package:superhero_app/app/managers/hive_manager.dart';

import '../../../hero_model.dart';
import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final HeroRepository heroRepository = HeroRepository.instance;

  RxList<HeroModel> heroModelList = <HeroModel>[].obs;

  RxList<bool> isFavoriteList = <bool>[].obs;

  Future<void> searchHeroAndUpdateModel(String heroName) async {
    heroModelList.value = await heroRepository.dioFetchHeroList(heroName);
    isFavoriteList.clear();
    for (var element in heroModelList) {
      bool isFavorite = await checkIsFavorite(element);
      isFavoriteList.add(isFavorite);
    }
  }

  Future<bool> checkIsFavorite(HeroModel heroModel) async {
    //TODO: handle favorite check
    return false;
  }

  Future<void> onTapStar(int index) async {
    //not enough code just example
    await HiveManager.instance.addFavorite(heroModelList.elementAt(index));

    //TODO add corresponding logic
  }

  void onTapCard(int index) {
    Get.toNamed(Routes.INFO_PAGE,
        arguments: {'heroModel': heroModelList.value.elementAt(index)});
  }
}
