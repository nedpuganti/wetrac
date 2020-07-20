import 'package:flutter/material.dart';
import 'package:wetrac/screens/home_screen.dart';

import 'constants/route_paths.dart';
import 'screens/intro_screen.dart';

Route<dynamic> generateRoute(
  RouteSettings settings,
) {
  switch (settings.name) {
    // case RootRoute:
    //   return MaterialPageRoute(builder: (context) => LoginScreen());
    // case NotificationsRoute:
    //   return MaterialPageRoute(builder: (context) => NotificationsScreen());
    case IntroRoute:
      return MaterialPageRoute(builder: (context) => IntroScreen());
    case HomeRoute:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}
