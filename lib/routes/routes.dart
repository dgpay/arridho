import '../view/home/homescreen.dart';
import 'package:flutter/material.dart';
import '../view/splash/splashscreen.dart';

class Routes {
  static const String SplashRoute = "/";
  static const String LoginRoute = "/login";
  static const String HomeRoute = "/homebase";
  static const String MainMenu = "/home";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.SplashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.HomeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text("No Route found"),
              ),
              body: Center(child: Text("No Route Found")),
            ));
  }
}
