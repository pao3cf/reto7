import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';

class GameGallery extends StatelessWidget {
  final Game game;
  const GameGallery(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => SizedBox(
                width: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    game.imgs[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(width: 15),
          itemCount: game.imgs.length),
    );
  }
}
