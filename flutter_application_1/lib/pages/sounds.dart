import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/models/sound.dart';
import 'package:flutter_application_1/pages/widgets/header.dart';
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
      backgroundColor: Color.fromARGB(255, 37, 51, 52),
      body: Column(
        children: [
          Header(),
          new ListView.builder(
            padding: EdgeInsets.only(top: 50),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
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
                  color: Color.fromARGB(255, 37, 51, 52),
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
        ],
      ),
    );
  }
}
