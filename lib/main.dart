import 'package:e_commerce_app/views/home_view.dart';
import 'package:e_commerce_app/views/update_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
        UpdatePage.id : (context) => UpdatePage(),
      },
      showSemanticsDebugger: false,
      theme: ThemeData(
      ),
      home: const Home(),
    );
  }
}