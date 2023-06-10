import 'package:champions_league_2023/common/ui/src/widgets.dart';
import 'package:champions_league_2023/features/match/bloc.dart';
import 'package:champions_league_2023/features/match/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MacthPageBloc>();

    return Scaffold(
      body: Stack(
        children: [
          Matchbackground(
            imageCover: bloc.state.matchData.imageCover,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const AppBarCL(),
                MatchResult(
                  finalScore: bloc.state.matchData.finalScore,
                  goals: bloc.state.matchData.goals,
                ),
                ManOfTheMatch(
                  manOfTheMacth: bloc.state.matchData.manOfTheMacth,
                ),
                MatchStats(
                  matchStats: bloc.state.matchData.stats,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
