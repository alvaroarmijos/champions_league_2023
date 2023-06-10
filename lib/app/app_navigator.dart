import 'package:flutter/material.dart';

class AppNavigator {
  AppNavigator._();

  static const ROUTE_MAIN_PAGE = Navigator.defaultRouteName;
  static const ROUTE_MACTH_DETAIL = '/match-detail';
  static const ROUTE_TEAM_DETAIL = '/team-detail';

  static void navigateBack(BuildContext context) => Navigator.pop(context);

  static void navigateToMainPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, ROUTE_MAIN_PAGE);
  }

  static void navigateBackToMainPage(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      ROUTE_MAIN_PAGE,
      (route) => false,
    );
  }

  static void navigateToMatchDetail(BuildContext context) {
    Navigator.pushNamed(context, ROUTE_MACTH_DETAIL);
  }

  static void navigateToTeamDetail(BuildContext context) {
    Navigator.pushNamed(context, ROUTE_TEAM_DETAIL);
  }
}
