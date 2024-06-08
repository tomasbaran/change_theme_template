import 'package:flutter/material.dart';

class DarkModeSwitch extends StatelessWidget {
  const DarkModeSwitch({
    super.key,
    required this.themeBrightness,
    required this.toggleTheme,
  });

  final Brightness themeBrightness;
  final Function toggleTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(themeBrightness.name),
        Switch.adaptive(
          value: themeBrightness == Brightness.dark,
          onChanged: (bool newValue) => toggleTheme(newValue),
        ),
      ],
    );
  }
}
