import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int theNumber = 4;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 2, 37, 66),
            background: Colors.blue),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ASK ME ANYTHING'),
        ),
        body: Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: ElevatedButton(
              onPressed: () {
                int random = Random().nextInt(5) + 1;
                setState(() {
                  theNumber = random;
                });
              },
              child: Image.asset('images/ball$theNumber.png')),
        ),
      ),
    );
  }
}
