import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/models/sound.dart';
import 'package:provider/provider.dart';

class SoundsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Swipe(),
    );
  }
}

class Swipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final soundsService = Provider.of<Sound>(context);
    return new Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: new AppBar(
        title: new Text("Swipe to dismiss"),
      ),
      body: new ListView.builder(
        itemCount: soundsService.tamanho,
        itemBuilder: (context, int index) {
          return new Dismissible(
            key: new Key(soundsService.getNome(index)!),
            onDismissed: (direction) {
              soundsService.removeItem(index);
              // Scaffold.of(context).showSnackBar(new SnackBar(
              //     content: new Text("Item dismissed successfully")));
            },
            background: new Container(
              color: Colors.red,
            ),
            child: Container(
              child: new ListTile(
                // leading: Icon(Icons.list),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "${soundsService.getNome(index)}",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "${soundsService.getNOuvintes(index)}",
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("${soundsService.getDuracao(index)}")
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
