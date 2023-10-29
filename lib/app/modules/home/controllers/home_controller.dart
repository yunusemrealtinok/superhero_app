import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superhero_app/app/data/hero_repository.dart';

import '../../../hero_model.dart';
import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final HeroRepository heroRepository = HeroRepository.instance;

  RxList<HeroModel> heroModelList = <HeroModel>[].obs;

  RxList<bool> isFavorite = <bool>[].obs;

  Future<void> searchHeroAndUpdateModel(String heroName) async {
    heroModelList.value = await heroRepository.dioFetchHeroList(heroName);
  }

  void onTapStar(int index) {
    //TODO handleStarIcon
  }

  void onTapCard(heroModel) {
    Get.toNamed(Routes.INFO_PAGE, arguments: {'heroModel': heroModel});
  }
}
