import 'package:flutter/material.dart';
import 'home.dart';
import 'bottom_navigation.dart';
import 'Pages/challengs/challenges.dart';
import 'Pages/profile/profile.dart';
import 'Pages/training/training_plans.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (tabItem == "Page1")
      child = TrainingPlans();
    else if (tabItem == "Page2")
      child = Challenges();
    else if (tabItem == "Page3") child = Profile();

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
