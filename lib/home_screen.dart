// home_screen.dart
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:untitled/utils/quotes.dart';
import 'package:untitled/widgets/custom_appBar.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int qIndex = 2;

  // Make qIndex a non-final field
  void getRandomQuote() {
    Random random = Random();

    setState(() {
      qIndex = random.nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              quoteIndex: qIndex,
              onTap: getRandomQuote,
            ), // Use CustomAppBar as a widget here
          ],
        ),
      ),
    );
  }
}
