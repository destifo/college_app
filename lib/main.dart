import 'package:flutter/material.dart';

import 'screens/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'College app',
      theme: ThemeData(
        textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 15, color: Colors.white),
            bodyLarge: TextStyle(fontSize: 24, color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
        primaryColor: const Color.fromRGBO(
          14,
          60,
          110,
          1,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
