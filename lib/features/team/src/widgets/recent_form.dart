import 'package:flutter/material.dart';

class RecentForm extends StatelessWidget {
  const RecentForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "RECENT FORM",
            style: theme.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FormItem(
                label: "W",
                color: Colors.green,
              ),
              FormItem(
                label: "W",
                color: Colors.green,
              ),
              FormItem(
                label: "W",
                color: Colors.green,
              ),
              FormItem(
                label: "L",
                color: Colors.red,
              ),
              FormItem(
                label: "D",
                color: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FormItem extends StatelessWidget {
  const FormItem({
    super.key,
    required this.label,
    required this.color,
  });

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: Center(
        child: Text(
          label,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
