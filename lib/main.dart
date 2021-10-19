import 'package:anon_app/home.dart';
import 'package:anon_app/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        //  'login': (context) => AuthDialog(),
        'home': (context) => Home(),
        'signup': (context) => Signup(),
        //    'preview': (context) => PreviewSel(),
      },
      home: Home(),
    );
  }
}
