import 'package:get/get.dart';
import 'package:superhero_app/app/data/hero_repository.dart';

import '../../../hero_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final HeroRepository heroRepository = HeroRepository();

  RxList heroModelList = [].obs;

  void searchHeroAndUpdateModel(String heroName) {
    heroRepository.fetchHeroList(heroName).then(
      (value) {
        heroModelList.value = value;
      },
    );
  }
}
