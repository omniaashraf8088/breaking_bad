import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app_bloc/bussiness_logic/characters_cubit.dart';
import 'package:movie_app_bloc/constants/utils.dart';
import 'package:movie_app_bloc/data/models/characters.dart';
import 'package:movie_app_bloc/presentation/widget/characters_items.dart';

class CharactersScreens extends StatefulWidget {
  const CharactersScreens({super.key});
  @override
  State<CharactersScreens> createState() => _CharactersScreensState();
}

class _CharactersScreensState extends State<CharactersScreens> {
  late List<Character> allCharacters;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allCharacters =
        BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  Widget buildBlocWidget() {
    return BlocBuilder(
      builder: (context, state) {
        if (state is CharactersLoaded) {
          allCharacters = (state).characters;
          return buildLoadedLiistWidget();
        } else {
          return showLoadingIndicator();
        }
      },
    );
  }

  Widget showLoadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColor.yellowColor,
      ),
    );
  }

  Widget buildLoadedLiistWidget() {
    return SingleChildScrollView(
      child: Container(
        color: AppColor.grayColor,
        child: Column(
          children: [
            buildCharactersList(),
          ],
        ),
      ),
    );
  }

  Widget buildCharactersList() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: allCharacters.length,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return  CharacterItem(character:allCharacters[index]);
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.yellowColor,
        title: const Text(
          'Characters',
          style: TextStyle(color: AppColor.grayColor),
        ),
      ),
      body: buildBlocWidget(),
    );
  }
}
