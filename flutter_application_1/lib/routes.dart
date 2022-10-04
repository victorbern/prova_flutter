import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/models/sound.dart';
import 'package:flutter_application_1/pages/models/usuario.dart';
import 'package:flutter_application_1/pages/onboarding.dart';
import 'package:flutter_application_1/pages/sounds.dart';
import 'package:flutter_application_1/pages/meditation.dart';
import 'package:provider/provider.dart';

class RouteGenerator {
  static const String meditationPage = '/';
  static const String homePage = '/home';
  static const String onboardingPage = "/onboarding";
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
          builder: (_) => const HomePage(),
        );
      case onboardingPage:
        return MaterialPageRoute(
          builder: (_) => const OnboardingPage(),
        );
      case loginPage:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case soundsPage:
        return MaterialPageRoute(
          builder: (_) => const SoundsPage(),
        );
      default:
        throw FormatException("Rota não encontrada");
    }
  }
}