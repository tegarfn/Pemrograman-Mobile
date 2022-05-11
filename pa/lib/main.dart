import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pa/board.dart';
import 'package:pa/home.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final toHome = prefs.getBool('toHome') ?? false;
  runApp(MyApp(
    toHome: toHome,
  ));
}

class MyApp extends StatelessWidget {
  final bool toHome;

  const MyApp({
    Key? key,
    required this.toHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery',
      home: toHome ? Home() : OnBoardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
