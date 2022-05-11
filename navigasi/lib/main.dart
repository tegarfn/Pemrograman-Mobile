import 'package:flutter/material.dart';
import 'package:navigasi/halaman2.dart';
import 'package:navigasi/halaman3.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Home',
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/hal2': (context) => Hal2(),
      '/hal3': (context) => Hal3(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
