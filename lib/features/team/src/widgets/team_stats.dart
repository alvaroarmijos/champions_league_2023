import 'package:champions_league_2023/data/feed/domain.dart';
import 'package:flutter/material.dart';

class TeamStats extends StatelessWidget {
  const TeamStats({
    super.key,
    required this.stats,
  });

  final List<TeamStat> stats;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var i = 0; i < stats.length; i++)
            StatItem(
              label: stats[i].label,
              value: stats[i].value,
              important: i == 0,
            ),
        ],
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  const StatItem({
    super.key,
    this.important = false,
    required this.label,
    required this.value,
  });

  final bool important;
  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      width: 80,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: important ? theme.colorScheme.primary : Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 12),
              color: theme.colorScheme.onPrimary.withOpacity(0.5),
              blurRadius: 12,
            )
          ]),
      child: Column(
        children: [
          Text(
            label.toUpperCase(),
            style: theme.textTheme.bodyMedium?.copyWith(
              color: important ? Colors.white : Colors.black,
            ),
          ),
          Text(
            "$value",
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: important ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
