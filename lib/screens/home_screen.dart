import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          // IconButton(
          //   icon: const Icon(Icons.settings),
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/settings');
          //   },
          // ),
          Switch.adaptive(value: true, onChanged: null),
        ],
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
