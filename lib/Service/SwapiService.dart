import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mvvm_template/Models/Character.dart';
import 'package:mvvm_template/Models/Film.dart';
import 'package:mvvm_template/Models/Planet.dart';
import 'package:mvvm_template/Service/IStarWarsApi.dart';

class SwapiService implements IStarWarsApi {
  final base_url = 'https://swapi.co/api';

  static final SwapiService _internal = SwapiService.internal();
  factory SwapiService() => _internal;
  SwapiService.internal();

  Future<dynamic> _getData(String url) async {
    var response = await http.get(url);
    var data = json.decode(response.body);
    return data;
  }

  @override
  Future<List<Character>> getCharacters() async {
    var data = await _getData('$base_url/people');
    List<dynamic> charactersData = data['results'];
    List<Character> characters =
        charactersData.map((c) => Character.fromMap(c)).toList();
    return characters;
  }

  @override
  Future<List<Film>> getFilms() async {
    var data = await _getData('$base_url/films');
    List<dynamic> filmsData = data['results'];
    List<Film> films = filmsData.map((f) => Film.fromMap(f)).toList();
    return films;
  }

  @override
  Future<List<Planet>> getPlanets() async {
    var data = await _getData('$base_url/planets');
    List<dynamic> planetsData = data['results'];
    List<Planet> planets = planetsData.map((p) => Planet.fromMap(p)).toList();
    return planets;
  }
}
