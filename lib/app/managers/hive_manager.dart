import 'package:hive_flutter/adapters.dart';
import 'package:superhero_app/app/hero_model.dart';

class HiveManager {
  HiveManager._();

  static HiveManager instance = HiveManager._();

  late Box<HeroModel> heroBox;

  Future<void> init() async {
    await Hive.initFlutter();
    await openBoxes();
  }

  Future<void> openBoxes() async {
    Hive.registerAdapter(ImageUrlAdapter());
    Hive.registerAdapter(AppearanceAdapter());
    Hive.registerAdapter(BiographyAdapter());
    Hive.registerAdapter(PowerStatsAdapter());
    Hive.registerAdapter(HeroModelAdapter());

    heroBox = await Hive.openBox<HeroModel>('hero');
  }
}

extension HeroExtension on HiveManager {
  List<HeroModel> get getFavorites {
    return heroBox.values.toList();
  }

  Future<void> addFavorite(HeroModel heroModel) async {
    await heroBox.add(heroModel);
  }

  Future<void> deleteFavorite(HeroModel heroModel) async {
    for (var entry in heroBox.toMap().entries) {
      if (entry.value == heroModel) {
        await heroBox.delete(entry.key);
      }
    }
  }
}
