import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/models/usuario.dart';
import 'package:flutter_application_1/pages/onboarding.dart';
import 'package:flutter_application_1/pages/meditation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Usuario(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      routes: {
        '/onboarding': (context) => Onboarding(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/meditation': (context) => const MeditationPage(),
      },
      initialRoute: '/meditation',
      debugShowCheckedModeBanner: false,
      home: const MeditationPage(),
    );
  }
}
