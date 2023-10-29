import 'package:flutter/material.dart';

import 'hero_model.dart';

class SuperHeroCard extends StatelessWidget {
  const SuperHeroCard({
    super.key,
    required this.heroModel,
    required this.onTap,
    required this.onTapStar,
    required this.isFavorite,
  });

  final HeroModel heroModel;
  final Function() onTap;
  final Function() onTapStar;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shadowColor: Colors.blue,
        color: Colors.black12,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.all(16),
        elevation: 30,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Hero(
                tag: heroModel.id,
                child: Image.network(
                  alignment: Alignment.bottomCenter,
                  heroModel.image.url,
                  height: 450,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Name: ${heroModel.name}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Real Name: ${heroModel.biography.fullName}',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Height: ${heroModel.appearance.height[1]}',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Weight: ${heroModel.appearance.weight[1]}',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                      size: 50,
                      Icons.star,
                      color: isFavorite ? Colors.orange : Colors.white,
                    ),
                    onPressed: onTapStar,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
