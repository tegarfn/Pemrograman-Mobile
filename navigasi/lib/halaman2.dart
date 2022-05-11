import 'package:flutter/material.dart';
import 'package:navigasi/halaman3.dart';

class Hal2 extends StatelessWidget {
  const Hal2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Halaman 2'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/hal3');
              },
              child: Text('Ke Halaman 3')),
          Container(width: 400, child: Image.asset('assets/Ayato.png')),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali Ke Home'))
        ]),
      ),
    );
  }
}
