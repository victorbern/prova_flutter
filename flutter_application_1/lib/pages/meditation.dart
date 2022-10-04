import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/camera_page.dart';

class MeditationPage extends StatefulWidget {
  const MeditationPage({Key? key}) : super(key: key);

  @override
  State<MeditationPage> createState() => _MeditationPage();
}

class _MeditationPage extends State<MeditationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 37, 51, 52),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Image(
                          width: 40,
                          image: AssetImage("assets/images/menu.png"),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Image(
                          width: 80,
                          image: AssetImage("assets/images/logo.png"),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Image(
                          width: 40,
                          image: AssetImage("assets/images/profile.png"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, left: 0, right: 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Center(
                            child: Text(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Alegreya',
                          ),
                          "Acompanhe sua meditação",
                        ))
                      ],
                    ),
                    SizedBox(height: 50),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 124, 154, 146),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              minimumSize: Size(321, 61),
                            ),
                            onPressed: () =>
                                {Navigator.pushNamed(context, '/home')},
                            child: Text(
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Alegreya_Sans',
                                    color: Color.fromARGB(255, 255, 255, 255)),
                                "Tirar foto"))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
