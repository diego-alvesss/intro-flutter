import 'package:flutter/material.dart';
import 'package:intro_lutter/pages/counter_screen_page.dart';
import 'package:intro_lutter/exemplos/Value_notifier_counter_screen.dart';
import 'package:intro_lutter/pages/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: HomeScreen(),
        ),
      ),
    );
  }
}
