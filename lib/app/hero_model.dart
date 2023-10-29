import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'hero_model.g.dart';

@HiveType(typeId: 0)
class HeroModel extends Equatable {
  const HeroModel({
    required this.id,
    required this.name,
    required this.powerStats,
    required this.biography,
    required this.appearance,
    required this.image,
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final PowerStats powerStats;
  @HiveField(3)
  final Biography biography;
  @HiveField(4)
  final Appearance appearance;
  @HiveField(5)
  final ImageUrl image;

  factory HeroModel.fromJson(Map<String, dynamic> json) {
    return HeroModel(
      id: json['id'],
      name: json['name'],
      powerStats: PowerStats.fromJson(json['powerstats']),
      biography: Biography.fromJson(json['biography']),
      appearance: Appearance.fromJson(json['appearance']),
      image: ImageUrl.fromJson(json['image']),
    );
  }

  @override
  List<Object?> get props =>
      [id, name, powerStats, biography, appearance, image];
}

@HiveType(typeId: 1)
class PowerStats extends Equatable {
  const PowerStats({
    required this.intelligence,
    required this.strength,
    required this.speed,
    required this.durability,
    required this.power,
    required this.combat,
  });

  @HiveField(0)
  final String intelligence;
  @HiveField(1)
  final String strength;
  @HiveField(2)
  final String speed;
  @HiveField(3)
  final String durability;
  @HiveField(4)
  final String power;
  @HiveField(5)
  final String combat;

  factory PowerStats.fromJson(Map<String, dynamic> json) {
    return PowerStats(
      intelligence: json['intelligence'],
      strength: json['strength'],
      speed: json['speed'],
      durability: json['durability'],
      power: json['power'],
      combat: json['combat'],
    );
  }

  @override
  List<Object?> get props =>
      [intelligence, strength, speed, durability, power, combat];
}

@HiveType(typeId: 2)
class Biography extends Equatable {
  const Biography({
    required this.fullName,
    required this.alterEgos,
    required this.aliases,
    required this.placeOfBirth,
    required this.firstAppearance,
    required this.publisher,
    required this.alignment,
  });

  @HiveField(0)
  final String fullName;
  @HiveField(1)
  final String alterEgos;
  @HiveField(2)
  final List aliases;
  @HiveField(3)
  final String placeOfBirth;
  @HiveField(4)
  final String firstAppearance;
  @HiveField(5)
  final String publisher;
  @HiveField(6)
  final String alignment;

  factory Biography.fromJson(Map<String, dynamic> json) {
    return Biography(
      fullName: json['full-name'],
      alterEgos: json['alter-egos'],
      aliases: json['aliases'],
      placeOfBirth: json['place-of-birth'],
      firstAppearance: json['first-appearance'],
      publisher: json['publisher'],
      alignment: json['alignment'],
    );
  }

  @override
  List<Object?> get props => [
        fullName,
        alterEgos,
        aliases,
        placeOfBirth,
        firstAppearance,
        publisher,
        alignment
      ];
}

@HiveType(typeId: 3)
class Appearance extends Equatable {
  const Appearance({
    required this.gender,
    required this.race,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.hairColor,
  });

  @HiveField(0)
  final String gender;
  @HiveField(1)
  final String race;
  @HiveField(2)
  final List height;
  @HiveField(3)
  final List weight;
  @HiveField(4)
  final String eyeColor;
  @HiveField(5)
  final String hairColor;

  factory Appearance.fromJson(Map<String, dynamic> json) {
    return Appearance(
      gender: json['gender'],
      race: json['race'],
      height: json['height'],
      weight: json['weight'],
      eyeColor: json['eye-color'],
      hairColor: json['hair-color'],
    );
  }

  @override
  List<Object?> get props =>
      [gender, race, height, weight, eyeColor, hairColor];
}

@HiveType(typeId: 4)
class ImageUrl extends Equatable {
  const ImageUrl({
    required this.url,
  });

  @HiveField(0)
  final String url;

  factory ImageUrl.fromJson(Map<String, dynamic> json) {
    return ImageUrl(
      url: json['url'],
    );
  }

  @override
  List<Object?> get props => [url];
}
