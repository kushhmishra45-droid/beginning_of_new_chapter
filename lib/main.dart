import 'package:begining_of_new_chapter/Screens/splash/splash.dart';
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
      title: 'Whatsapp Clone UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: .fromSeed(seedColor: Color(0XFF00A884)),
        useMaterial3: false,
      ),
      home: Splash()
    );
  }
}

