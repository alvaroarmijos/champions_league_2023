import 'package:champions_league_2023/features/home/page.dart';
import 'package:champions_league_2023/features/match/bloc.dart';
import 'package:champions_league_2023/features/match/page.dart';
import 'package:champions_league_2023/features/team/bloc.dart';
import 'package:champions_league_2023/features/team/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_navigator.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class CLApp extends StatelessWidget {
  const CLApp({super.key});

  @override
  Widget build(BuildContext context) {
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
            settings: settings,
            builder: (context) => BlocProvider(
                  create: (_) => MacthPageBloc(),
                  child: const MatchPage(),
                ));
      case AppNavigator.ROUTE_TEAM_DETAIL:
        return MaterialPageRoute(
            settings: settings,
            builder: (context) => BlocProvider(
                  create: (_) => TeamPageBloc(),
                  child: const TeamPage(),
                ));
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name} on CLExperience',
              ),
            ),
          ),
        );
    }
  }
}
