import 'package:flutter/material.dart';

class HeroCard extends StatelessWidget {
  final String heroName;
  final String imagePath;

  const HeroCard({super.key, required this.heroName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: NetworkImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 70.0),
                Text(
                  heroName,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 50),
                IconButton(
                  icon: const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
