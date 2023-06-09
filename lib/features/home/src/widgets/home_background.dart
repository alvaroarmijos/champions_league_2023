import 'package:flutter/material.dart';

import '../../../../common/ui/src/res/drawables.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        child: Image.asset(
          CLDrawables.getCLBackground(),
          height: MediaQuery.of(context).size.height * 0.4,
          fit: BoxFit.cover,
        ));
  }
}
