import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../hero_model.dart';

class HeroRepository {
  HeroRepository._();
  static HeroRepository instance = HeroRepository._();
  final Dio dio = Dio();

  Future<HeroModel> searchHero(String heroSearchText) async {
    final String requestUrl =
        'https://www.superheroapi.com/api.php/694257225774622/search/$heroSearchText';
    Uri uri = Uri.parse(requestUrl);
    final http.Response response = await http.get(uri);
    final result = response.body;
    final json = jsonDecode(result)['results'][0];
    return HeroModel.fromJson(json);
  }

  Future<List<HeroModel>> fetchHeroList(String heroSearchText) async {
    final String requestUrl =
        'https://www.superheroapi.com/api.php/694257225774622/search/$heroSearchText';
    Uri uri = Uri.parse(requestUrl);
    final http.Response response = await http.get(uri);
    final result = response.body;
    final resultList = jsonDecode(result)['results'] as List;
    List<HeroModel> heroModelList = [];
    for (var element in resultList) {
      heroModelList.add(HeroModel.fromJson(element));
    }
    return heroModelList;

    //return (resultList.map((e) => HeroModel.fromJson(e)).toList());
  }

  Future<List<HeroModel>> dioFetchHeroList(String heroSearchText) async {
    final response = await dio.get(
        'https://www.superheroapi.com/api.php/694257225774622/search/$heroSearchText');
    final resultList = response.data['results'] as List;
    List<HeroModel> heroModelList = [];
    for (var element in resultList) {
      heroModelList.add(HeroModel.fromJson(element));
    }
    return heroModelList;
  }
}
