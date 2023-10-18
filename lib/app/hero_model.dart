class HeroModel {
  const HeroModel({
    required this.id,
    required this.name,
    required this.powerStats,
    required this.biography,
    required this.appearance,
    required this.image,
  });

  final String id;
  final String name;
  final PowerStats powerStats;
  final Biography biography;
  final Appearance appearance;
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
}

class PowerStats {
  const PowerStats({
    required this.intelligence,
    required this.strength,
    required this.speed,
    required this.durability,
    required this.power,
    required this.combat,
  });

  final String intelligence;
  final String strength;
  final String speed;
  final String durability;
  final String power;
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
}

class Biography {
  const Biography({
    required this.fullName,
    required this.alterEgos,
    required this.aliases,
    required this.placeOfBirth,
    required this.firstAppearance,
    required this.publisher,
    required this.alignment,
  });

  final String fullName;
  final String alterEgos;
  final List aliases;
  final String placeOfBirth;
  final String firstAppearance;
  final String publisher;
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
}

class Appearance {
  const Appearance({
    required this.gender,
    required this.race,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.hairColor,
  });

  final String gender;
  final String race;
  final List height;
  final List weight;
  final String eyeColor;
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
}

class ImageUrl {
  const ImageUrl({
    required this.url,
  });

  final String url;

  factory ImageUrl.fromJson(Map<String, dynamic> json) {
    return ImageUrl(
      url: json['url'],
    );
  }
}
