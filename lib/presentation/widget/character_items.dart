import 'package:flutter/material.dart';
import 'package:movie_app_bloc/constants/utils.dart';
import 'package:movie_app_bloc/data/models/characters.dart';

class CharacterItems extends StatelessWidget {
  final Character character;

  const CharacterItems({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      width: double.infinity,
      padding: const EdgeInsetsDirectional.all(8),
      decoration: BoxDecoration(
        color: AppColor.yellowColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(
        footer: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: Colors.black45,
          alignment: Alignment.bottomCenter,
          child: Text(
            character.name,
            style: const TextStyle(
                height: 1.3,
                fontSize: 16,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
        child: Container(
          color: AppColor.grayColor,
          child: character.image.isNotEmpty
              ? FadeInImage(
                  placeholder: const AssetImage('assets/images/loading_image.gif'),
                  image: NetworkImage(character.image),
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover)
              : Image.asset('assets/images/tourtle.gif'),
        ),
      ),
    );
  }
}

