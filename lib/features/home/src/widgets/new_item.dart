import 'dart:io';

import 'package:champions_league_2023/data/feed/domain/news/news.dart';
import 'package:flutter/material.dart';

class NewItem extends StatelessWidget {
  const NewItem({
    super.key,
    required this.news,
  });

  final News news;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 12),
              color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.5),
              blurRadius: 20,
            )
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(48),
            child: Image.network(
              news.url.toString(),
              height: Platform.isIOS ? 270 : 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          ChipDate(
            date: news.date,
            chip: news.chip,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              news.title,
              style: theme.textTheme.displaySmall
                  ?.copyWith(fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}

class ChipDate extends StatelessWidget {
  const ChipDate({
    super.key,
    required this.date,
    required this.chip,
  });

  final String date;
  final String chip;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: ShapeDecoration(
                shape: const StadiumBorder(),
                gradient: LinearGradient(colors: [
                  theme.colorScheme.primary,
                  theme.colorScheme.onPrimary,
                ])),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  chip,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 32,
          ),
          Text(
            date,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
