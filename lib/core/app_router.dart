import 'package:flutter/material.dart';
import 'package:ifinnance/authentication/screens/authentication_screen.dart';
import 'package:ifinnance/main/screens/main_screen.dart';

const String loginPage = "/loginPage";
const String mainScreen = "/mainScreen";

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    dynamic data;
    if (settings.arguments != null) {
      data = settings.arguments;
    }

    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(settings: settings, builder: (_) => const AuthenticationScreen());
      case mainScreen:
        return MaterialPageRoute(settings: settings, builder: (_) => const MainScreen());
    }
    return null;
  }
}
