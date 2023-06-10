import 'package:flutter/material.dart';

import '../../../../data/feed/domain.dart';

class RecentForm extends StatelessWidget {
  const RecentForm({
    super.key,
    required this.recentForms,
  });

  final List<TeamForm> recentForms;

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (var i = 0; i < recentForms.length; i++)
                FormItem(
                  form: recentForms[i],
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
    required this.form,
  });

  final TeamForm form;

  @override
  Widget build(BuildContext context) {
    final (color, label) = switch (form) {
      TeamForm.win => (Colors.green, "D"),
      TeamForm.lost => (Colors.red, "L"),
      TeamForm.draw => (Colors.grey, "D"),
    };

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
