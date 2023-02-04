import 'dart:math';

import 'package:flutter/material.dart';

class Dado extends StatefulWidget {
  static const String id = '/dado';
  Dado({super.key});

  @override
  State<Dado> createState() => _DadoState();
}

int dice1 = 1;
int dice2 = 2;

class _DadoState extends State<Dado> {
  void increment() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: increment,
                    child: Image.asset('assets/images/dice$dice1.png'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: InkWell(
                    onTap: increment,
                    child: Image.asset('assets/images/dice$dice2.png'),
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
