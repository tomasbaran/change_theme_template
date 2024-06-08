import 'package:change_theme_template/widgets/dark_mode_switch.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Brightness themeBrightness;
  final Function toggleTheme;
  const HomeScreen({
    super.key,
    required this.themeBrightness,
    required this.toggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          DarkModeSwitch(
            themeBrightness: themeBrightness,
            toggleTheme: toggleTheme,
          ),
        ],
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
