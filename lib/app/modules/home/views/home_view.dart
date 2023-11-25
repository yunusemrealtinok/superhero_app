import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../card.dart';
import '../../../custom_textfield.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CustomTextField(
                textEditingController: controller.searchController,
                hintText: 'Hero',
                onSubmitted: controller.searchHeroAndUpdateModel,
              ),
            ),
          ),
          Obx(
            () {
              controller.refreshed.value;
              if (controller.heroModelList.value.isNotEmpty) {
                return Expanded(
                  child: PageView.builder(
                    itemCount: controller.heroModelList.length,
                    itemBuilder: (context, index) {
                      return SuperHeroCard(
                        heroModel:
                            controller.heroModelList.value.elementAt(index),
                        onTap: () {
                          controller.onTapCard(index);
                        },
                        onTapStar: () {
                          controller.onTapStar(index);
                        },
                        isFavorite:
                            controller.isFavoriteList.value.elementAt(index),
                      );
                    },
                  ),
                );
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
