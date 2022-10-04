import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Header extends StatelessWidget {
  // const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
