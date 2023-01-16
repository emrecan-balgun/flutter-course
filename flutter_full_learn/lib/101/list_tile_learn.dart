import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final imageUrl = 'https://picsum.photos/200/300';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Image.network(imageUrl, height: 100, fit: BoxFit.cover),
                dense: true,
                subtitle: const Text('This is my card'),
                minVerticalPadding: 0,
                leading: Container(height: 200, width: 30, alignment: Alignment.topCenter, color: Colors.red, child: const Icon(Icons.money)),
                trailing: const SizedBox(width: 20, child: Icon(Icons.chevron_right)),
                onTap: () {},
              ),
            ),
          )
        ],),
      )
    );
  }
}