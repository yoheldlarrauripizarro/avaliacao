import 'package:flutter/material.dart';
import '../my_home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício Montagem GUI',
      theme: ThemeData(
        primaryColor: Colors.blue[200],
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
