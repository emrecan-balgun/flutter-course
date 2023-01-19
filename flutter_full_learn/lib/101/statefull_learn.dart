import 'package:flutter/material.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  void _updateCounter(bool isIncrement) { // _ koyduk çünkü sadece bu classta kullanılacak
    if(isIncrement) {
      _countValue += 1;
    } else {
      _countValue -= 1;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(child: Text(_countValue.toString(), style: Theme.of(context).textTheme.headline2)),
          const Placeholder(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() => FloatingActionButton(
      onPressed: () => {_updateCounter(true)}, child: const Icon(Icons.add));

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
          onPressed: () => {_updateCounter(false)}, child: const Icon(Icons.remove)),
    );
  }
}
