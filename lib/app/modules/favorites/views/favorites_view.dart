import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:superhero_app/app/modules/favorites/views/hero_card.dart';
import 'package:superhero_app/app/modules/home/controllers/home_controller.dart';

import '../controllers/favorites_controller.dart';

class FavoritesView extends GetView<FavoritesController> {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FavoritesController());

    return Obx(() {
      return ListView.builder(
        itemCount: controller.heroes.length,
        itemBuilder: (context, index) {
          return HeroCard(
            heroName: controller.heroes[index].name,
            imagePath: controller.heroes[index].image.url,
            onTap: () {
              controller.onTapFavoriteCard(index);
            },
            deleteFavorite: () {
              controller.onTapFavoriteStar(index);
            },
          );
        },
      );
    });
  }
}
