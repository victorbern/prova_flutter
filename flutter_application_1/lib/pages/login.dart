import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/formulario.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
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
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                // Campo de E-mail
                                decoration:
                                    InputDecoration(hintText: 'Email Address'),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Você precisa digitar um endereço de email';
                                  }
                                  return null;
                                },
                                onSaved: (txt) {
                                  setState(() {
                                    email = txt!;
                                  });
                                },
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: 'Digite a sua senha'),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Você precisa digitar a sua senha';
                                  }
                                  return null;
                                },
                                onSaved: (txt) {
                                  setState(() {
                                    senha = txt!;
                                  });
                                },
                              ),
                              ElevatedButton(
                                onPressed: () => {
                                  if (_formKey.currentState!.validate())
                                    {
                                      _formKey.currentState!.save(),
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text('Processing Data')),
                                      ),
                                    }
                                },
                                child: Text('LOGIN'),
                              ),
                              Text('Email: $email'),
                              Text('Senha: $senha')
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
