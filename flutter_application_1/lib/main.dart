import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/models/sound.dart';
import 'package:flutter_application_1/pages/models/usuario.dart';
import 'package:flutter_application_1/pages/onboarding.dart';
import 'package:flutter_application_1/pages/sounds.dart';
import 'package:flutter_application_1/pages/meditation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Usuario(),
        ),
        ChangeNotifierProvider(
          create: (context) => Sound(),
        ),
      ],
      child: MyApp(),
    ),
  );
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
        '/sounds': (context) => SoundsPage(),
        '/meditation': (context) => const MeditationPage(),
      },
      initialRoute: '/sounds',
      debugShowCheckedModeBanner: false,
      // home: const MeditationPage(),
    );
  }
}
