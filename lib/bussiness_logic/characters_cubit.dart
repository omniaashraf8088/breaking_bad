import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:movie_app_bloc/data/models/characters.dart';
import 'package:movie_app_bloc/data/repo/characters_repo.dart';
part 'characteries_state.dart';

class CharactersCubit extends Cubit<CharacteriesState> {
  final CharactersRepo charactersRepo ;
   List<Character> characters=[];
  CharactersCubit(this.charactersRepo) : super(CharacteriesInitial());
  List<Character> getAllCharacters(){
    charactersRepo.getAllCharacters().then((characters){
      emit(CharactersLoaded(characters));
      this.characters=characters;
    });
    return characters;
  }

}
