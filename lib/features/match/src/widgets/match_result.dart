import 'package:champions_league_2023/app/app_navigator.dart';
import 'package:champions_league_2023/data/feed/domain.dart';
import 'package:flutter/material.dart';

import '../../../../common/ui/src/res/drawables.dart';

const heightImage = 96.0;

class MatchResult extends StatelessWidget {
  const MatchResult({
    super.key,
    required this.finalScore,
    required this.goals,
  });

  final FinalScore finalScore;
  final List<String> goals;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Text(
            "FINAL SCORE",
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => AppNavigator.navigateToTeamDetail(context),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      finalScore.imgLocal,
                      height: heightImage,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.circle,
                          color: theme.colorScheme.onPrimary,
                          size: 16,
                        ),
                        Text(
                          finalScore.local,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: ShapeDecoration(
                  shape: const StadiumBorder(),
                  color: theme.colorScheme.primary,
                ),
                child: Text(
                  finalScore.score,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 44,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    finalScore.imgVisit,
                    height: heightImage,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.circle,
                        color: theme.colorScheme.primary,
                        size: 16,
                      ),
                      Text(
                        finalScore.visit,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          for (var i = 0; i < goals.length; i++) GoalData(goal: goals[i])
        ],
      ),
    );
  }
}

class GoalData extends StatelessWidget {
  const GoalData({
    super.key,
    required this.goal,
  });

  final String goal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          Text(
            goal,
          ),
          const SizedBox(
            width: 4,
          ),
          Image.asset(
            CLDrawables.getCLLogo(),
            height: 16,
            color: Theme.of(context).colorScheme.onPrimary,
          )
        ],
      ),
    );
  }
}
