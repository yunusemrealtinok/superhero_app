import 'dart:convert';

import 'package:http/http.dart' as http;

import '../hero_model.dart';

class HeroRepository {
  //This is a class called HeroRepository, which likely handles the logic for searching and fetching superhero data.
  Future<HeroModel> searchHero(String heroSearchText) async {
    //The searchHero method is an asynchronous function that returns a Future<HeroModel>.
    // It takes a single argument heroSearchText, which is the text to be used for searching the superhero details.
    final String requestUrl =
        'https://www.superheroapi.com/api.php/694257225774622/search/$heroSearchText';
    Uri uri = Uri.parse(requestUrl);
    final http.Response response = await http.get(uri);
    final result = response.body;
    final json = jsonDecode(result)['results'][0];
    return HeroModel.fromJson(json);
    //The HeroModel.fromJson method is used to convert the JSON data (stored in the result variable) into a HeroModel object.
    // The fromJson method is typically a constructor within the HeroModel class
    // that takes a JSON representation and initializes the object with the parsed data.
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
}
