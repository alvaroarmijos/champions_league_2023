import 'package:champions_league_2023/app/app_navigator.dart';
import 'package:flutter/material.dart';

const height = 48.0;

class AppBarCL extends StatelessWidget {
  const AppBarCL({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SizedBox(
        height: height,
        child: Row(
          children: [
            IconButton(
                onPressed: () => AppNavigator.navigateBack(context),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            const SizedBox(
              width: 8,
            ),
            Text(
              "BACK",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
