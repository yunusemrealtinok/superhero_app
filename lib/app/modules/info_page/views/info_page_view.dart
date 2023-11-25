import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/info_page_controller.dart';

class InfoPageView extends GetView<InfoPageController> {
  const InfoPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              child: Hero(
                tag: controller.heroModel.id,
                child: Image.network(
                  controller.heroModel.image.url,
                  height: 450.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Text(
              'Hero Name: ${controller.heroModel.name}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),
            Text(
              'Real Name: ${controller.heroModel.biography.fullName}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            Text(
              'Height: ${controller.heroModel.appearance.height[1]}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            Text(
              'Weight: ${controller.heroModel.appearance.weight[1]}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            Text(
              'Intelligence: ${controller.heroModel.powerStats.intelligence}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            Text(
              'Strength: ${controller.heroModel.powerStats.strength}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            Text(
              'Speed: ${controller.heroModel.powerStats.speed}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            Text(
              'Durability: ${controller.heroModel.powerStats.durability}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            Text(
              'Power: ${controller.heroModel.powerStats.power}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            Text(
              'Combat: ${controller.heroModel.powerStats.combat}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            Text(
              'Gender: ${controller.heroModel.appearance.gender}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(height: 8.h),
            Text(
              'Race: ${controller.heroModel.appearance.race}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            // Add more attributes from the HeroModel2 as needed
          ],
        ),
      ),
    );
  }
}
