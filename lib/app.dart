import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wetrac/providers/auth_provider.dart';
import 'package:wetrac/screens/intro_screen.dart';
import 'package:wetrac/screens/login_screen.dart';
import 'package:wetrac/screens/splash_screen.dart';
import 'package:provider/provider.dart';

import 'config/navigation_service.dart';
import 'constants/route_paths.dart' as routes;
import 'router.dart' as router;
import 'screens/home_screen.dart';
import 'theme.dart';
// import 'config/locator.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // NotificationOneSignal().initialiseOneSignal();
    // DynamicLinksSetup().initDynamicLinks();
    // initalizeBackgroundFetch();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness:
            Platform.isAndroid ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarDividerColor: Colors.grey,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: AuthProvider(),
        ),
      ],
      child: Consumer<AuthProvider>(
        builder: (ctx, auth, _) {
          return MaterialApp(
            title: 'wetrac',
            debugShowCheckedModeBanner: false,
            // theme: ThemeData(
            //   primarySwatch: Colors.blue,
            //   textTheme: AppTheme.textTheme,
            //   // pageTransitionsTheme: PageTransitionsTheme(
            //   //   builders: {
            //   //     TargetPlatform.android: CustomPageTransitionBuilder(),
            //   //     TargetPlatform.iOS: CustomPageTransitionBuilder(),
            //   //   },
            //   // ),
            // ),
            // darkTheme: ThemeData.dark(),
            theme: myTheme,
            initialRoute: routes.RootRoute,
            home: _buildHomeWidget(auth),
            navigatorKey: NavigationService.navigatorKey,
            onGenerateRoute: (settings) => router.generateRoute(
              settings,
            ),
          );
        },
      ),
    );
  }

  Widget _buildHomeWidget(AuthProvider auth) {
    if (auth.isAuth) {
      return HomeScreen();
    } else {
      return FutureBuilder(
        future: auth.tryAutoLogin(),
        builder: (ctx, authResultSnapshot) =>
            authResultSnapshot.connectionState == ConnectionState.waiting
                ? SplashScreen()
                : LoginScreen(),
      );
    }
  }
}
