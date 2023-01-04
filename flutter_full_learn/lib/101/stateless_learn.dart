import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Column(
      children: [
        const TitleTextWidget(text: "A"),
        const TitleTextWidget(text: "B"),
        const TitleTextWidget(text: "C"),
        const _CustomContainer(),
        _empytBox()
      ],
    ));
  }

  SizedBox _empytBox() => const SizedBox(height: 10); // fonksiyon olarak da tanımlanabilir
}

class _CustomContainer extends StatelessWidget { // _ eklemek sadece bu dosyada kullanılabilir demek yani private class
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget { // dışarıdan parametre alabiliyor
  const TitleTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline3);
  }
}