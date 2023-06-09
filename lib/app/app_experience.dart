import 'package:champions_league_2023/features/home/src/page.dart';
import 'package:champions_league_2023/features/match/src/page.dart';
import 'package:flutter/material.dart';

import 'app_navigator.dart';

class AppExperience extends StatelessWidget {
  const AppExperience({super.key});

  @override
  Widget build(BuildContext context) {
    final navigatorKey = GlobalKey<NavigatorState>();

    return WillPopScope(
      child: Navigator(
        key: navigatorKey,
        onGenerateRoute: _routeFactory,
      ),
      onWillPop: () async {
        return !(await navigatorKey.currentState?.maybePop() ?? true);
      },
    );
  }

  static Route<dynamic> _routeFactory(RouteSettings settings) {
    switch (settings.name) {
      case AppNavigator.ROUTE_MAIN_PAGE:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const HomePage(),
        );
      case AppNavigator.ROUTE_MACTH_DETAIL:
        return MaterialPageRoute(
            settings: settings, builder: (context) => const MatchPage());
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name} on AppExperience',
              ),
            ),
          ),
        );
    }
  }
}
