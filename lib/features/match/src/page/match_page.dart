import 'package:champions_league_2023/common/ui/src/widgets.dart';
import 'package:champions_league_2023/features/match/widgets.dart';
import 'package:flutter/material.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Matchbackground(),
          Column(
            children: [
              AppBarCL(),
              MatchResult(),
              ManOfTheMatch(),
            ],
          )
        ],
      ),
    );
  }
}
