import 'package:counter_exam/presentation/pages/counter_page.dart';
import 'package:counter_exam/presentation/pages/settings_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/counter":
        return MaterialPageRoute(builder: (_) => const CounterPage());
      case "/settings":
        return MaterialPageRoute(builder: (_) =>  SettingsPage());
      default:
        throw ("No page found");
    }
  }
}
