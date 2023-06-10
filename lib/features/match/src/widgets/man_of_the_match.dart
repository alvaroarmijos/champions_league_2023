import 'package:champions_league_2023/common/ui/src/res/drawables.dart';
import 'package:flutter/material.dart';

class ManOfTheMatch extends StatelessWidget {
  const ManOfTheMatch({super.key});

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
                      "https://www.footyrenders.com/render/ilkay-gundogan-30.png",
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
                        "#8",
                        style: theme.textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            text: "İlkay ",
                            style: theme.textTheme.titleLarge?.copyWith(
                              color: Colors.white,
                            ),
                            children: [
                              TextSpan(
                                text: "Gündoğan",
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
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Statistics(label: "SHOTS", data: "4"),
                          Statistics(label: "ASSISTS", data: "1"),
                          Statistics(label: "INFL.", data: "6.7"),
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
                      const DistanceCovered(
                        label: "Gündoğan",
                        value: "12",
                        color: Colors.green,
                        width: 200,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const DistanceCovered(
                        label: "AVG.",
                        value: "10",
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
  final String value;
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
              value,
              style: theme.textTheme.labelLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}
