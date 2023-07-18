import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_app/contant.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int R = 0;
  int G = 0;
  int B = 0;
  double O = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          elevation: 0.0,
          title: Text(
            "Test App",
            style: TextStyle(
                color: Color.fromRGBO(R, G, B, O),
                fontFamily: 'Montserrat',
                fontSize: 20.0),
          ),
          leading: const SizedBox(width: 0, height: 0),

          // backgroundColor: Colors.white,
          actions: const <Widget>[],
        ),
        body: InkWell(
            onTap: generateColor,
            child: Container(
              color: Color.fromRGBO(R, G, B, O),
              child: const Center(
                child: Text('Hello There'),
              ),
            )));
  }

  generateColor() {
    Random random = Random();
    setState(() {
      R = random.nextInt(256);
      G = random.nextInt(256);
      B = random.nextInt(256);
    });
  }
}
