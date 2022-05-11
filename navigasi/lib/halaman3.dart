import 'package:flutter/material.dart';

class Hal3 extends StatelessWidget {
  const Hal3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 3'),
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 200, child: Image.asset('assets/logo.png')),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali Ke Halaman 2')),
          ],
        ),
      ),
    );
  }
}
