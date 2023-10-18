import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../hero_model.dart';
import '../controllers/info_page_controller.dart';

class InfoPageView extends GetView<InfoPageController> {
  const InfoPageView({this.heroModel, Key? key}) : super(key: key);
  final HeroModel? heroModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              child: Image.network(
                heroModel!.image.url,
                height: 450,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Hero Name: ${heroModel?.name}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Real Name: ${heroModel?.biography.fullName}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 8),
            Text(
              'Height: ${heroModel?.appearance.height[1]}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 8),
            Text(
              'Weight: ${heroModel?.appearance.weight[1]}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 8),
            Text(
              'Intelligence: ${heroModel?.powerStats.intelligence}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 8),
            Text(
              'Strength: ${heroModel?.powerStats.strength}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 8),
            Text(
              'Speed: ${heroModel?.powerStats.speed}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 8),
            Text(
              'Durability: ${heroModel?.powerStats.durability}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 8),
            Text(
              'Power: ${heroModel?.powerStats.power}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 8),
            Text(
              'Combat: ${heroModel?.powerStats.combat}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 8),
            Text(
              'Gender: ${heroModel?.appearance.gender}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 8),
            Text(
              'Race: ${heroModel?.appearance.race}',
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
