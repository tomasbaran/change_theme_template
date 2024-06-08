import 'package:change_theme_template/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late Brightness themeBrightness;

  @override
  void initState() {
    super.initState();
    themeBrightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
  }

  void toggleTheme(bool valueFromSwitch) {
    setState(() {
      themeBrightness = valueFromSwitch ? Brightness.dark : Brightness.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: themeBrightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light,
      home: HomeScreen(
        themeBrightness: themeBrightness,
        toggleTheme: toggleTheme,
      ),
    );
  }
}
