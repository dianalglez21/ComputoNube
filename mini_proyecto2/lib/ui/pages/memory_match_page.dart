import 'package:flutter/material.dart';
import 'package:mini_proyecto2/ui/widgets/mobile/game_board_mobile.dart';
import 'package:mini_proyecto2/ui/widgets/web/game_board.dart';

class MemoryMatchPage extends StatelessWidget {
  const MemoryMatchPage({
    required this.gameLevel,
    super.key,
  });

  final int gameLevel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: ((context, constraints) {
            if (constraints.maxWidth > 720) {
              return GameBoard(
                gameLevel: gameLevel,
              );
            } else {
              return GameBoardMobile(
                gameLevel: gameLevel,
              );
            }
          }),
        ),
      ),
    );
  }
}
