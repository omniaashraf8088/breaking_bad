

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app_bloc/bussiness_logic/characters_cubit.dart';
import 'package:movie_app_bloc/data/repo/characters_repo.dart';
import 'package:movie_app_bloc/data/webservices/character_api.dart';
import 'package:movie_app_bloc/presentation/screens/character_screen.dart';
import 'package:movie_app_bloc/presentation/screens/characters_details.dart';

class AppRoute {
  late CharactersCubit charactersCubit;
  late CharactersRepo charactersRepo;
  AppRoute(){
     charactersCubit=CharactersCubit(charactersRepo);
      charactersRepo=CharactersRepo(CharactersApi());

  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CharacterDetialsScreen :
        return MaterialPageRoute(builder: (_) => BlocProvider(create: (BuildContext contextt)=>CharactersCubit(charactersRepo)));
      case CharactersScreens :
        return MaterialPageRoute(builder: (_) => CharactersScreens());
    }
  }

} 