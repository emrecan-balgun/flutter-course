import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({super.key});
  final ColorsItems colorItems = ColorsItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
      body: Container(
        // color: ColorsItems.sulu,
        // color: colorItems.porchase,
        // color: Theme.of(context).errorColor,
        child: Text(
          'Color Learn', 
          style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).errorColor)
        ),
      ),
    );
  }
}

class ColorsItems {
  final Color porchase = const Color(0xffEDBF61);
  static const Color sulu = const Color.fromRGBO(198, 237, 97, 1);
}