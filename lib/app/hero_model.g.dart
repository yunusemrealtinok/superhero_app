// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HeroModelAdapter extends TypeAdapter<HeroModel> {
  @override
  final int typeId = 0;

  @override
  HeroModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HeroModel(
      id: fields[0] as String,
      name: fields[1] as String,
      powerStats: fields[2] as PowerStats,
      biography: fields[3] as Biography,
      appearance: fields[4] as Appearance,
      image: fields[5] as ImageUrl,
    );
  }

  @override
  void write(BinaryWriter writer, HeroModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.powerStats)
      ..writeByte(3)
      ..write(obj.biography)
      ..writeByte(4)
      ..write(obj.appearance)
      ..writeByte(5)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeroModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PowerStatsAdapter extends TypeAdapter<PowerStats> {
  @override
  final int typeId = 1;

  @override
  PowerStats read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PowerStats(
      intelligence: fields[0] as String,
      strength: fields[1] as String,
      speed: fields[2] as String,
      durability: fields[3] as String,
      power: fields[4] as String,
      combat: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PowerStats obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.intelligence)
      ..writeByte(1)
      ..write(obj.strength)
      ..writeByte(2)
      ..write(obj.speed)
      ..writeByte(3)
      ..write(obj.durability)
      ..writeByte(4)
      ..write(obj.power)
      ..writeByte(5)
      ..write(obj.combat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PowerStatsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BiographyAdapter extends TypeAdapter<Biography> {
  @override
  final int typeId = 2;

  @override
  Biography read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Biography(
      fullName: fields[0] as String,
      alterEgos: fields[1] as String,
      aliases: (fields[2] as List).cast<dynamic>(),
      placeOfBirth: fields[3] as String,
      firstAppearance: fields[4] as String,
      publisher: fields[5] as String,
      alignment: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Biography obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.fullName)
      ..writeByte(1)
      ..write(obj.alterEgos)
      ..writeByte(2)
      ..write(obj.aliases)
      ..writeByte(3)
      ..write(obj.placeOfBirth)
      ..writeByte(4)
      ..write(obj.firstAppearance)
      ..writeByte(5)
      ..write(obj.publisher)
      ..writeByte(6)
      ..write(obj.alignment);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BiographyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AppearanceAdapter extends TypeAdapter<Appearance> {
  @override
  final int typeId = 3;

  @override
  Appearance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Appearance(
      gender: fields[0] as String,
      race: fields[1] as String,
      height: (fields[2] as List).cast<dynamic>(),
      weight: (fields[3] as List).cast<dynamic>(),
      eyeColor: fields[4] as String,
      hairColor: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Appearance obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.gender)
      ..writeByte(1)
      ..write(obj.race)
      ..writeByte(2)
      ..write(obj.height)
      ..writeByte(3)
      ..write(obj.weight)
      ..writeByte(4)
      ..write(obj.eyeColor)
      ..writeByte(5)
      ..write(obj.hairColor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppearanceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImageUrlAdapter extends TypeAdapter<ImageUrl> {
  @override
  final int typeId = 4;

  @override
  ImageUrl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImageUrl(
      url: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ImageUrl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageUrlAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
