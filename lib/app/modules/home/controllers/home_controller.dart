import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:superhero_app/app/data/hero_repository.dart';

import '../../../hero_model.dart';

class HomeController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final HeroRepository heroRepository = HeroRepository.instance;

  RxList<HeroModel> heroModelList = <HeroModel>[].obs;

  Future<void> searchHeroAndUpdateModel(String heroName) async {
    heroModelList.value = await heroRepository.dioFetchHeroList(heroName);
  }
}
