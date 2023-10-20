import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:superhero_app/app/routes/app_pages.dart';

import '../../../card.dart';
import '../../../custom_textfield.dart';
import '../../info_page/views/info_page_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

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
                  textEditingController: controller.searchController,
                  hintText: 'Hero',
                  onSubmitted: controller.searchHeroAndUpdateModel,
                ),
              ),
            ),
            Obx(
              () {
                if (controller.heroModelList.value.isNotEmpty) {
                  return Expanded(
                    child: PageView.builder(
                      itemCount: controller.heroModelList.value.length,
                      itemBuilder: (context, index) {
                        return SuperHeroCard(
                          heroModel:
                              controller.heroModelList.value.elementAt(index),
                          onTap: (heroModel) {
                            Get.toNamed(Routes.INFO_PAGE);
                          },
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
      ),
    );
  }
}
