import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            _CustomCard(child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text("Emre"))
            )),
            Card(
              color: Theme.of(context).colorScheme.error,
              child: const SizedBox(height: 100, width: 100),
            ),
          ],
        ));
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
  static final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

class _CustomCard extends StatelessWidget {
  _CustomCard({super.key, required this.child});
  final Widget child;
  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 1, // shadow of card (default 1)
      margin: ProjectMargins.cardMargin,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}

// Borders
// StadiumBorder()