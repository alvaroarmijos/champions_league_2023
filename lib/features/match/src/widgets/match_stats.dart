import 'package:flutter/material.dart';

import '../../../../data/feed/domain.dart';

class MatchStats extends StatelessWidget {
  const MatchStats({
    super.key,
    required this.matchStats,
  });

  final List<Stat> matchStats;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            Text(
              "MATCH STATS",
              style: theme.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            for (var i = 0; i < matchStats.length; i++)
              StatWidget(
                local: matchStats[i].local,
                visit: matchStats[i].visit,
                label: matchStats[i].label,
              ),
          ]),
    );
  }
}

class StatWidget extends StatefulWidget {
  const StatWidget({
    super.key,
    required this.local,
    required this.visit,
    required this.label,
  });

  final int local;
  final int visit;
  final String label;

  @override
  State<StatWidget> createState() => _StatWidgetState();
}

class _StatWidgetState extends State<StatWidget> {
  bool firstTime = true;
  int val = 0;

  @override
  void initState() {
    if (firstTime) {
      firstTime = false;
      Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          val = widget.local;
        });
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Text(
          widget.label.toUpperCase(),
          style: theme.textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSecondary,
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 28,
              child: Text(
                "${widget.local}",
                style: theme.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: val,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                height: 12,
                curve: Curves.elasticIn,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              flex: widget.visit,
              child: Container(
                height: 12,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  color: theme.colorScheme.onSecondary,
                ),
              ),
            ),
            SizedBox(
              width: 28,
              child: Text(
                "${widget.visit}",
                style: theme.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
