import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/models/sound.dart';
import 'package:flutter_application_1/pages/models/usuario.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<Usuario>(context);
    final soundsService = Provider.of<Sound>(context);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 37, 51, 52),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          image: AssetImage("assets/images/menu.png"),
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
                margin: const EdgeInsets.only(top: 40, left: 25),
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
              // Container(
              //   // margin: const EdgeInsets.only(top: 40),
              //   child: Row(
              //     mainAxisSize: MainAxisSize.max,
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Image(
              //         image: AssetImage("assets/images/clain.png"),
              //       ),
              //       Image(
              //         image: AssetImage("assets/images/relax.png"),
              //       ),
              //       Image(
              //         image: AssetImage("assets/images/focus.png"),
              //       ),
              //       Image(
              //         image: AssetImage("assets/images/anxious.png"),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   // margin: const EdgeInsets.only(top: 22),
              //   padding: const EdgeInsets.only(left: 30, top: 22),
              //   width: 350,
              //   height: 170,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     color: Color.fromARGB(255, 247, 243, 240),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Column(
              //         children: [
              //           Row(
              //             children: [
              //               Text(
              //                   style: TextStyle(
              //                     color: Color.fromARGB(255, 37, 51, 52),
              //                     fontSize: 25,
              //                     fontFamily: 'Alegreya',
              //                   ),
              //                   "Meditation 101")
              //             ],
              //           ),
              //           Row(
              //             children: [
              //               Text(
              //                   style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 15,
              //                     fontFamily: 'Alegreya_Sans',
              //                   ),
              //                   "Techniques, Benefits, and \na Beginner's How-To"),
              //             ],
              //           ),
              //         ],
              //       ),
              //       Column(
              //         children: [
              //           Image(
              //             width: 120,
              //             image: AssetImage("assets/images/meditation101.png"),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/logo.png'),
                      iconSize: 50,
                      onPressed: () {
                        Navigator.pushNamed(context, '/meditation');
                      },
                    ),
                    // IconButton(
                    //   icon: Image.asset('assets/images/sounds.png'),
                    //   iconSize: 50,
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, '/sounds');
                    //   },
                    // )
                  ],
                ),
              ),
              Center(
                child: new ListView.builder(
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
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: const EdgeInsets.only(top: 22),
                          // padding: const EdgeInsets.only(left: 30, top: 22),
                          width: 350,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 247, 243, 240),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 37, 51, 52),
                                          fontSize: 25,
                                          fontFamily: 'Alegreya',
                                        ),
                                        "${soundsService.getNome(index)}",
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'Alegreya_Sans',
                                          ),
                                          "${soundsService.getNOuvintes(index)} ouvintes / ${soundsService.getDuracao(index)}"),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image(
                                    width: 120,
                                    image: AssetImage(
                                        "assets/images/meditation101.png"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
