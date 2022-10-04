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
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/background_login.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 101.0, left: 27, right: 27),
            child: Column(
              children: [
                Row(
                  children: [
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
                        children: [
                          Text(
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Alegreya',
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              "Sign in"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Alegreya_Sans',
                                  color: Color.fromARGB(180, 255, 255, 255)),
                              "Sign in now to access your excercises "),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Alegreya_Sans',
                                  color: Color.fromARGB(180, 255, 255, 255)),
                              "and saved music."),
                        ],
                      ),
                      Container(
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: 'Nome Completo',
                                  errorText: validationService.nome.error,
                                ),
                                onChanged: (String txt) {
                                  validationService.setNome(txt);
                                },
                              ),
                              TextFormField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: 'Endereço de email',
                                  errorText: validationService.email.error,
                                ),
                                onChanged: (String txt) {
                                  validationService.setEmail(txt);
                                },
                              ),
                              TextFormField(
                                obscureText: true,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: 'Digite a sua senha',
                                  errorText: validationService.senha.error,
                                ),
                                onChanged: (String txt) {
                                  validationService.setSenha(txt);
                                },
                              ),
                              ElevatedButton(
                                onPressed: () => {
                                  (!validationService.isValid)
                                      ? null
                                      : Navigator.pushNamed(context, '/home'),
                                },
                                child: Text('LOGIN'),
                              ),
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
