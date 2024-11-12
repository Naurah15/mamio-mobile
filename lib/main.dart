import 'package:flutter/material.dart';
import 'package:mamio/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Adjust the primary color to match the gradient
        primaryColor: Color.fromARGB(255, 116, 9, 56),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(255, 175, 23, 64),
          secondary: Color.fromARGB(255, 204, 43, 82),
        ),
      ),
      home: MyHomePage(),
    );
  }
}