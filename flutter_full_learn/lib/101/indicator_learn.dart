import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [CenterCircularProgress()],
        ),
        body: const Center(
          child: LinearProgressIndicator(),
        ));
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({
    Key? key,
  }) : super(key: key);
  final redColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(
      strokeWidth: 10,
      value: 0.9,
      backgroundColor: Colors.red,
    ));
  }
}
