import 'package:flutter/material.dart';

import '../../../../common/ui/src/res/drawables.dart';

class PlayersStats extends StatelessWidget {
  const PlayersStats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PlayerStats(
            label: "Most Goals",
            name: "Erling",
            lastName: "Haaland",
            number: "9",
            image:
                "https://resources.premierleague.com/premierleague/photos/players/250x250/p223094.png",
            left: true,
          ),
          PlayerStats(
            label: "Most Assists",
            name: "Kevin",
            lastName: "de Bryne",
            number: "17",
            image:
                "https://resources.premierleague.com/premierleague/photos/players/250x250/p61366.png",
            left: false,
          ),
        ],
      ),
    );
  }
}

class PlayerStats extends StatelessWidget {
  const PlayerStats({
    super.key,
    required this.label,
    required this.name,
    required this.lastName,
    required this.image,
    required this.number,
    required this.left,
  });

  final String label;
  final String name;
  final String lastName;
  final String image;
  final String number;
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
                label.toUpperCase(),
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
                          number,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                              text: "$name ",
                              style: theme.textTheme.titleLarge?.copyWith(
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                  text: lastName,
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
                image,
                height: 180,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
