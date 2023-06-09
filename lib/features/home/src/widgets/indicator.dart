import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.itemCount,
    required this.currentIndex,
  });

  final int itemCount;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < itemCount; i++)
          AnimatedContainer(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: i == currentIndex
                  ? Theme.of(context).colorScheme.onPrimary
                  : Colors.grey[400],
            ),
            width: i == currentIndex ? 24 : 12,
            height: 6,
          )
      ],
    );
  }
}
