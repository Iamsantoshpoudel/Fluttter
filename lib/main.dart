import 'package:flutter/material.dart';
import 'package:poudelx/data/notifiers.dart';
import 'package:poudelx/views/widgets_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MainState();
}

class _MainState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMood, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 118, 215, 247),
              brightness: isDarkMood ? Brightness.dark : Brightness.light,
            ),
          ),
          home: WidgetsTree(),
        );
      },
    );
    ;
  }
}
