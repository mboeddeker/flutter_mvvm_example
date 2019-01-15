import 'dart:async';
import 'package:mvvm_template/Models/Character.dart';
import 'package:mvvm_template/Models/Film.dart';
import 'package:mvvm_template/Models/Planet.dart';

abstract class IStarWarsApi {
  Future<List<Film>> getFilms();
  Future<List<Character>> getCharacters();
  Future<List<Planet>> getPlanets();
}
