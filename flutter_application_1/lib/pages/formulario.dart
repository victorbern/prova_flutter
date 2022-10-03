import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(hintText: 'Nome completo'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Você precisa digitar um nome';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(hintText: 'Endereço de e-mail'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Você precisa digitar um endereço de email';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () => {
              if (_formkey.currentState!.validate())
                {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  ),
                }
            },
            child: Text('LOGIN'),
          ),
        ],
      ),
    );
  }
}
