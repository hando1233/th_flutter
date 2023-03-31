import 'package:flutter/material.dart';
import 'package:th_flutter_s7/signin/signinpage.dart';
import 'package:th_flutter_s7/splashpage.dart';
import 'homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TH_Flutter',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      debugShowCheckedModeBanner: false,
      home: const SignInPage(),
    );
  }
}
