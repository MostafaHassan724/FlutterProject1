// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade500,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'QUIZ',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: InteractiveBall(),
        ),
      ),
    );
  }
}

class InteractiveBall extends StatefulWidget {
  const InteractiveBall({super.key});

  @override
  State<InteractiveBall> createState() => _InteractiveBallState();
}

class _InteractiveBallState extends State<InteractiveBall> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
