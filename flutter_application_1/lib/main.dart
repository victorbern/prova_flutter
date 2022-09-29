import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/onboarding': (context) => Onboarding(),
        '/login': (context) => LoginPage()
      },
      initialRoute: '/onboarding',
    );
  }
}
