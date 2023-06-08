import 'package:flutter/material.dart';

class NewItem extends StatelessWidget {
  const NewItem({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.red,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 20),
            )
          ]),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
          Text(
            "Halaand grabs late win for City",
            style: theme.textTheme.displaySmall,
          )
        ],
      ),
    );
  }
}
