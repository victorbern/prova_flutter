import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/onboarding.dart';
import 'package:flutter_application_1/pages/sounds.dart';
import 'package:flutter_application_1/pages/meditation.dart';

class RouteGenerator {
  static const String meditationPage = '/meditation';
  static const String homePage = '/home';
  static const String onboardingPage = "/";
  static const String loginPage = "/login";
  static const String soundsPage = "/sounds";

  RouteGenerator._() {}

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case meditationPage:
        return MaterialPageRoute(
          builder: (_) => const MeditationPage(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case onboardingPage:
        return MaterialPageRoute(
          builder: (_) => Onboarding(),
        );
      case loginPage:
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
        );
      case soundsPage:
        return MaterialPageRoute(
          builder: (_) => SoundsPage(),
        );
      default:
        throw FormatException("Rota não encontrada");
    }
  }
}
