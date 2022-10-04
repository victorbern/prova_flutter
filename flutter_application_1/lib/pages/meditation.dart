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
                          image: AssetImage("assets/images/menu (2).png"),
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
                margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Alegreya',
                          ),
                          "Meditation",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            final cameras = await availableCameras();
                            await availableCameras().then((value) =>
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            CameraPage(cameras: value))));
                          },
                          child: const Text("Take a Picture"),
                        )
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
