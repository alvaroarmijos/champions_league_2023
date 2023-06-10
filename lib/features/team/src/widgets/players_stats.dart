import 'package:flutter/material.dart';

import '../../../../common/ui/src/res/drawables.dart';
import '../../../../data/feed/domain.dart';

class PlayersStats extends StatelessWidget {
  const PlayersStats({
    super.key,
    required this.players,
  });

  final List<MostPlayer> players;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < players.length; i++)
            PlayerStats(
              mostPlayer: players[i],
              left: i == 0,
            ),
        ],
      ),
    );
  }
}

class PlayerStats extends StatelessWidget {
  const PlayerStats({
    super.key,
    required this.mostPlayer,
    required this.left,
  });

  final MostPlayer mostPlayer;
  final bool left;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(top: 32),
      height: 170,
      child: Stack(
        children: [
          Align(
            alignment: left ? Alignment.topRight : Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                mostPlayer.label.toUpperCase(),
                style: theme.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(36)),
              child: Stack(
                alignment: left ? Alignment.centerRight : Alignment.centerLeft,
                children: [
                  Image.asset(
                    CLDrawables.getCLBackground(),
                    color: theme.colorScheme.primary.withOpacity(0.5),
                    colorBlendMode: BlendMode.darken,
                    fit: BoxFit.cover,
                    height: 130,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: left
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          mostPlayer.number,
                          style: theme.textTheme.headlineLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                              text: "${mostPlayer.name} ",
                              style: theme.textTheme.titleLarge?.copyWith(
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                  text: mostPlayer.lastName,
                                  style:
                                      theme.textTheme.headlineMedium?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: left ? 16 : 0, right: !left ? 16 : 0),
            child: Align(
              alignment: left ? Alignment.bottomLeft : Alignment.bottomRight,
              child: Image.network(
                mostPlayer.image,
                height: 180,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
