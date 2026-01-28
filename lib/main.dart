import 'package:flutter/material.dart';
import 'package:tela_inicial_medium/pages/home_page_medium.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela Inicial Medium',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      home: HomePageMedium(),
    );
  }
}
