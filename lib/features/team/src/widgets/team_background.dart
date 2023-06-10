import 'package:flutter/material.dart';

class TeamBackground extends StatelessWidget {
  const TeamBackground({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,
      height: 165,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
