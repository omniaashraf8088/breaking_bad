part of 'characters_cubit.dart';

@immutable
abstract class CharacteriesState {}

class CharacteriesInitial extends CharacteriesState {}
class CharactersLoaded extends CharacteriesState {
  final List<Character> characters;
  CharactersLoaded(this.characters);

}

