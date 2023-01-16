import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          // Container(color: Colors.red, height: 100),
          // Padding(
          //   padding: const EdgeInsets.only(top: 50),
          //   child: Container(color: Colors.blue, height: 100),
          // ),
          Positioned.fill(top: 100, child: Container(color: Colors.purple)),
          Positioned(width: 100, height: 100, bottom: 0, child: Container(color: Colors.green)),
        ]
      ),
    );
  }
}