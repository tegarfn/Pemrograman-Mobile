import 'package:flutter/material.dart';
import 'package:navigasi/halaman2.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 300, child: Image.asset('assets/Avatar_Ayato.png')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/hal2');
                },
                child: Text('Ke Halaman 2')),
          ],
        ),
      ),
    );
  }
}
