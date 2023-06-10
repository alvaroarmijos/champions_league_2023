import 'package:champions_league_2023/common/ui/src/res/drawables.dart';
import 'package:champions_league_2023/data/feed/domain.dart';
import 'package:flutter/material.dart';

class ManOfTheMatch extends StatelessWidget {
  const ManOfTheMatch({
    super.key,
    required this.manOfTheMacth,
  });

  final ManOfTheMacth manOfTheMacth;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "MAN OF THE MATCH",
            style: theme.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(48)),
            child: Stack(
              children: [
                Image.asset(
                  CLDrawables.getCLBackground(),
                  color: theme.colorScheme.primary.withOpacity(0.5),
                  colorBlendMode: BlendMode.darken,
                  fit: BoxFit.cover,
                  height: 300,
                ),
                Positioned(
                  top: 0,
                  right: -460,
                  child: Transform(
                    transform: Matrix4.rotationY(3.14),
                    child: Image.network(
                      manOfTheMacth.image,
                      height: 300,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "#${manOfTheMacth.number}",
                        style: theme.textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            text: "${manOfTheMacth.name} ",
                            style: theme.textTheme.titleLarge?.copyWith(
                              color: Colors.white,
                            ),
                            children: [
                              TextSpan(
                                text: manOfTheMacth.lastName,
                                style: theme.textTheme.headlineMedium?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Statistics(
                              label: "SHOTS",
                              data: manOfTheMacth.shots.toString()),
                          Statistics(
                              label: "ASSISTS",
                              data: manOfTheMacth.assits.toString()),
                          Statistics(
                              label: "INFL.",
                              data: manOfTheMacth.infl.toString()),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "DISTANCE COVERED (KM)",
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      DistanceCovered(
                        label: "Gündoğan",
                        value: manOfTheMacth.dcPlayer,
                        color: Colors.green,
                        width: 200,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      DistanceCovered(
                        label: "AVG.",
                        value: manOfTheMacth.dcAvg,
                        color: Colors.purple,
                        width: 170,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Statistics extends StatelessWidget {
  const Statistics({
    super.key,
    required this.label,
    required this.data,
  });

  final String label;
  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: RichText(
        text: TextSpan(
            text: "$label\n",
            style: theme.textTheme.labelMedium?.copyWith(
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: data,
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
      ),
    );
  }
}

class DistanceCovered extends StatelessWidget {
  const DistanceCovered({
    super.key,
    required this.label,
    required this.value,
    required this.color,
    required this.width,
  });

  final String label;
  final int value;
  final Color color;
  final double width;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
        padding: const EdgeInsets.all(4),
        width: width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: theme.textTheme.labelLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "$value",
              style: theme.textTheme.labelLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}
