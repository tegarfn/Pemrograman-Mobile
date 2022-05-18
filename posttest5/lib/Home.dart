import 'package:flutter/material.dart';
import 'package:posttest5/keranjang.dart';
import 'package:posttest5/lihat.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tegar Fitrah"),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/header.png"),
                      fit: BoxFit.cover)),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text("Pesan Sekarang"),
              leading: const Icon(Icons.shopping_bag),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => keranjang(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Lihat"),
              leading: const Icon(Icons.remove_red_eye_sharp),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => lihat(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.red),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const keranjang(),
                ),
              );
            },
            child: const Text("Pesan Sekarang"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 53)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const lihat(),
                ),
              );
            },
            child: const Text("lihat"),
          ),
        ],
      )),
    );
  }
}
