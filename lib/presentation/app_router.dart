import 'package:flutter/material.dart';

import '../core/exceptions/route_exception.dart';
import 'home_screen/home_screen.dart';

class AppRouter {
  Route<dynamic> onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }

  void dispose() {}
}
