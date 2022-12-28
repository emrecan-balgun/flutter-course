import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
          child: Text('Save', style: Theme.of(context).textTheme.subtitle1),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if(states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.blue;
            })),
          onPressed: () {}),
        const ElevatedButton(child: const Text("Save"), onPressed: null),
        IconButton(icon: const Icon(Icons.save), onPressed: () {}),
        FloatingActionButton(child: const Icon(Icons.add), onPressed: () {
          
        }),
        OutlinedButton(
          child: SizedBox(width: 200, child: const Text("Save")),
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(10),
            backgroundColor: Colors.lime,
            shape: const CircleBorder(),
            ),
          onPressed: () {}),
          OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.save), label: const Text("Save")),
        InkWell(child: const Text("Custom"), onTap: () {}),
        
        Container(height: 200, color: Colors.white),

        ElevatedButton(
          onPressed: () {}, 
          style: ElevatedButton.styleFrom(
            // primary: Colors.black,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
            child: Text('Place Bid', style: Theme.of(context).textTheme.headline5),
          ))
      ],
      )
    );
  }
}

// Borders
// CircleBorder(), RoundedRectangleBorder()