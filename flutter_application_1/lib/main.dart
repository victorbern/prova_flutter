import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/models/sound.dart';
import 'package:flutter_application_1/pages/models/usuario.dart';
import 'package:flutter_application_1/routes.dart';
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
      onGenerateTitle: (context) => "Flutter APP",
      initialRoute: RouteGenerator.meditationPage,
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
