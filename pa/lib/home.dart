import 'package:flutter/material.dart';
import 'package:pa/board.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'hello',
          style: TextStyle(color: Colors.black),
        ),
        ElevatedButton(
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('toHome', false);
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => OnBoardingPage()));
            },
            child: Text('kembali'))
      ],
    )));
  }
}
