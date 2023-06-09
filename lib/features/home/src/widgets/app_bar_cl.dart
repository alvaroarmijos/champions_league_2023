import 'package:champions_league_2023/common/ui/src/res/drawables.dart';
import 'package:flutter/material.dart';

class AppBarCL extends StatelessWidget {
  const AppBarCL({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 48,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          Image.asset(
            CLDrawables.getCLLogo(),
            color: Colors.white,
            height: 32,
          )
        ],
      ),
    );
  }
}
