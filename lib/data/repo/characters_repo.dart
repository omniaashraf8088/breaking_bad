import 'package:flutter/cupertino.dart';
import 'package:movie_app_bloc/data/models/characters.dart';
import 'package:movie_app_bloc/data/webservices/character_api.dart';

class CharactersRepo{
  final CharactersApi charactersApi ;
  CharactersRepo(this.charactersApi);
  Future<List<Character>>getAllCharacters()async{
    final character= await charactersApi.getAllCharacteries();
    return character.map((character)=>Character.fromJson(character)).toList();

  }




}