import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  int _counterCustom = 0;

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
      appBar: AppBar(title: const Text('Merhaba')),
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
          const CounterHelloButton(),
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
