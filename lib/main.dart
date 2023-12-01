import 'package:flutter/material.dart';
import 'package:untitled/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepPurpleAccent,
        ),
        // Use the following line if you're using Flutter 2.8.0 or above
        // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        // useMaterial3 is not needed anymore in Flutter 2.8.0 and above
      ),
      home: const HomeScreen(title: 'Women Safety App'),
    );
  }
}
