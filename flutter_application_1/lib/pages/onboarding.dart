import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image(image: AssetImage("assets/images/logo.png"))),
            Center(
                child: Text(
                    style: const TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Alegreya',
                        color: Color.fromARGB(255, 255, 255, 255)),
                    "WELCOME")),
            Center(
                child: Text(
                    style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Alegreya_Sans',
                        color: Color.fromARGB(255, 255, 255, 255)),
                    "Do meditation. Stay focused. ")),
            Center(
                child: Text(
                    style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Alegreya_Sans',
                        color: Color.fromARGB(255, 255, 255, 255)),
                    "Live a healthy life")),
            Container(
              margin: const EdgeInsets.only(top: 119.0),
              child: Column(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 124, 154, 146),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        minimumSize: Size(321, 61),
                      ),
                      onPressed: () => {Navigator.pushNamed(context, '/login')},
                      child: Text(
                          style: const TextStyle(
                              fontSize: 25,
                              fontFamily: 'Alegreya_Sans',
                              color: Color.fromARGB(255, 255, 255, 255)),
                          "Login With Email")),
                  Container(
                    margin: const EdgeInsets.only(top: 18.0),
                    child: Text.rich(
                      TextSpan(
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Alegreya_Sans',
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        text: "Don't have an account?", // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Sign Up',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
