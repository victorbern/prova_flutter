import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/models/usuario.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<Usuario>(context);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 37, 51, 52),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image(
                          width: 40,
                          image: AssetImage("assets/images/menu (2).png"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          width: 80,
                          image: AssetImage("assets/images/logo.png"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
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
                margin: const EdgeInsets.only(top: 40, left: 25, right: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Alegreya',
                          ),
                          "Welcome Back, ${usuarioService.nome.value}",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                            style: TextStyle(
                              color: Color.fromARGB(179, 255, 255, 255),
                              fontSize: 22,
                              fontFamily: 'Alegreya_Sans',
                            ),
                            "How are you feeling today?"),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage("assets/images/clain.png"),
                    ),
                    Image(
                      image: AssetImage("assets/images/relax.png"),
                    ),
                    Image(
                      image: AssetImage("assets/images/focus.png"),
                    ),
                    Image(
                      image: AssetImage("assets/images/anxious.png"),
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
