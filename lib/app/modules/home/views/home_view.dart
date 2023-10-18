import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../card.dart';
import '../../../custom_textfield.dart';
import '../../info_page/views/info_page_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final TextEditingController _searchController = TextEditingController();
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: CustomTextField(
                  textEditingController: _searchController,
                  hintText: 'Hero',
                  onSubmitted: homeController.searchHeroAndUpdateModel,
                ),
              ),
            ),
            if (homeController.heroModelList.isNotEmpty)
              Obx(
                () => Expanded(
                  child: PageView.builder(
                    itemCount: homeController.heroModelList.length,
                    itemBuilder: (context, index) {
                      return SuperHeroCard(
                        heroModel:
                            homeController.heroModelList.elementAt(index),
                        onTap: (heroModel) {
                          Get.to(
                            InfoPageView(heroModel: heroModel),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
