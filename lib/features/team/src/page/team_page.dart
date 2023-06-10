import 'package:champions_league_2023/features/team/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/ui/src/widgets.dart';
import '../../bloc.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TeamPageBloc>();

    return Scaffold(
      body: Stack(
        children: [
          TeamBackground(
            image: bloc.state.team.stadium,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const AppBarCL(),
                TeamLogo(
                  image: bloc.state.team.image,
                  name: bloc.state.team.name,
                ),
                TeamStats(
                  stats: bloc.state.team.stats,
                ),
                RecentForm(
                  recentForms: bloc.state.team.recentForms,
                ),
                PlayersStats(
                  players: bloc.state.team.players,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TeamLogo extends StatelessWidget {
  const TeamLogo({
    super.key,
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          image,
          height: 100,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        )
      ],
    );
  }
}
