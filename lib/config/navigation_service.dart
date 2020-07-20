import 'package:flutter/material.dart';

// import 'package:wetrac/screens/auth/switchstore_screen.dart';
// import 'package:wetrac/screens/auth/login_screen.dart';

import 'package:wetrac/constants/route_paths.dart' as routes;
import 'package:wetrac/screens/intro_screen.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  static navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  static goBack() {
    return navigatorKey.currentState.pop();
  }

  static goBackHome() {
    return navigatorKey.currentState.pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (BuildContext context) => IntroScreen(),
          settings: const RouteSettings(name: routes.IntroRoute),
        ),
        (Route<dynamic> route) => false);
  }
}

//Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
