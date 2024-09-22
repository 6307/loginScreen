import 'package:flutter/material.dart';
import 'package:statemanagment/simple_ui/splash_screen.dart';
import 'dashboard_screen.dart';
import 'login_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashboardScreen());
      default:
        return MaterialPageRoute(builder: (_) => LoginScreen());  // Fallback
    }
  }
}
