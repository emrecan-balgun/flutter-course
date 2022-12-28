import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // CupertinoApp for iOS style and Material for Android style
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // home: TextLearnView(),
      home: ContainerSizedBoxLearn(),
    );
  }
}
