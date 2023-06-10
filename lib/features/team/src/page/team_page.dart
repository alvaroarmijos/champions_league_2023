import 'package:champions_league_2023/features/team/widgets.dart';
import 'package:flutter/material.dart';

import '../../../../common/ui/src/widgets.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          TeamBackground(),
          SingleChildScrollView(
            child: Column(
              children: [
                AppBarCL(),
                TeamLogo(),
                TeamStats(),
                RecentForm(),
                PlayersStats(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TeamLogo extends StatelessWidget {
  const TeamLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          "https://logodownload.org/wp-content/uploads/2017/02/manchester-city-fc-logo-escudo-badge-1.png",
          height: 100,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "Manchester City FC",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        )
      ],
    );
  }
}
