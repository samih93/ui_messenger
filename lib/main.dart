import 'package:flutter/material.dart';
import 'package:ui_messenger/messenger_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MessagingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
