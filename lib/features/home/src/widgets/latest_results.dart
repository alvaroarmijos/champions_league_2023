import 'package:champions_league_2023/data/feed/domain.dart';
import 'package:flutter/material.dart';

class LatestResult extends StatelessWidget {
  const LatestResult({
    super.key,
    required this.matchResult,
    required this.onTap,
  });

  final MatchResult matchResult;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "LATEST RESULTS - MATCHDAY 22",
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(
            height: 16,
          ),
          MatchResultItem(
            matchResult: matchResult,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}

class MatchResultItem extends StatelessWidget {
  const MatchResultItem({
    super.key,
    required this.matchResult,
    required this.onTap,
  });

  final MatchResult matchResult;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        padding: const EdgeInsets.only(right: 32),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 12),
              color: theme.colorScheme.onPrimary.withOpacity(0.5),
              blurRadius: 12,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    matchResult.local,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.network(
                    matchResult.imgLocal,
                    height: 48,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: ShapeDecoration(
                      shape: const StadiumBorder(),
                      color: theme.colorScheme.primary,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          matchResult.result,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.network(
                    matchResult.imgVisit,
                    height: 48,
                  ),
                  Text(
                    matchResult.visit,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: theme.colorScheme.onPrimary,
            )
          ],
        ),
      ),
    );
  }
}
