import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/models/usuario.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<Usuario>(context);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background_login.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 101.0, left: 27, right: 27),
            child: Column(
              children: [
                Row(
                  children: const [
                    Image(
                      width: 50,
                      image: AssetImage("assets/images/logo.png"),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 31.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Alegreya',
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              "Sign in"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Alegreya_Sans',
                                  color: Color.fromARGB(180, 255, 255, 255)),
                              "Sign in now to access your excercises "),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Alegreya_Sans',
                                  color: Color.fromARGB(180, 255, 255, 255)),
                              "and saved music."),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  hintText: 'Nome Completo',
                                  errorText: validationService.nome.error,
                                ),
                                onChanged: (String txt) {
                                  validationService.setNome(txt);
                                },
                              ),
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  hintText: 'Endereço de email',
                                  errorText: validationService.email.error,
                                ),
                                onChanged: (String txt) {
                                  validationService.setEmail(txt);
                                },
                              ),
                              TextFormField(
                                obscureText: true,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  hintText: 'Digite a sua senha',
                                  errorText: validationService.senha.error,
                                ),
                                onChanged: (String txt) {
                                  validationService.setSenha(txt);
                                },
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 50),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 124, 154, 146),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      minimumSize: Size(321, 61),
                                    ),
                                    onPressed: () =>
                                        {Navigator.pushNamed(context, '/home')},
                                    child: Text(
                                        style: const TextStyle(
                                            fontSize: 25,
                                            fontFamily: 'Alegreya_Sans',
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                        "Login")),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
