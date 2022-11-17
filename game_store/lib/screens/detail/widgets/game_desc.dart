import 'package:flutter/material.dart';
import 'package:game_store/constants/colors.dart';
import 'package:game_store/models/game.dart';
import 'package:readmore/readmore.dart';

class GameDesc extends StatelessWidget {
  final Game game;
  const GameDesc(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ReadMoreText(
          game.desc,
          trimLines: 2,
          colorClickableText: kPrimary,
          trimMode: TrimMode.Line,
          style: TextStyle(
            color: Colors.purple.withOpacity(0.7),
            height: 1.5,
          ),
          trimCollapsedText: 'Más',
          trimExpandedText: 'Menos',
        ));
  }
}
