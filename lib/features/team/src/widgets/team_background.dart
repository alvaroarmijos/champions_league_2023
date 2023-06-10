import 'package:flutter/material.dart';

class TeamBackground extends StatelessWidget {
  const TeamBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://lh3.googleusercontent.com/TPU-d2OsLC9odQJ5FRJWAbv5t4PsD8v1wMgq1bGg6FBL-0o3YyjNlpSL856hGKIgm15JfdYhxyfj8TIgnobZv0tGxQ=w640-h400-e365-rj-sc0x00ffffff",
      color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,
      height: 165,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
