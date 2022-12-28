import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title = 'Welcome App Bar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text (_title),
        leading: const Icon(Icons.chevron_left),
        // actionsIconTheme: IconThemeData(color: Colors.red, size: 24),
        // toolbarTextStyle: const TextStyle(color: Colors.red),
        // automaticallyImplyLeading: false, // hide back button
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.mark_email_unread_sharp)),
          const Center(child: CircularProgressIndicator()),
        ]
      ),
      body: Column(children: const [
        
      ])
    );
  }
}