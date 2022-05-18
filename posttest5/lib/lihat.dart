import 'package:flutter/material.dart';
import 'package:posttest5/popup.dart';

class lihat extends StatelessWidget {
  const lihat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tegar Fitrah"),
        backgroundColor: Color.fromARGB(255, 10, 150, 200),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "VENTELA",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "PUBLIC SUEDE",
                    style: TextStyle(fontSize: 36, color: Colors.black),
                  ),
                ],
              )),
          Image(
            image: AssetImage("assets/public_suede.jpg"),
            height: 400,
          ),
          SizedBox(height: 30),
          Center(
            child: Column(
              children: [
                Text(
                  "Size",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        ukuran(size: "39"),
                        ukuran(size: "40"),
                        ukuran(isActive: true, size: "41"),
                        ukuran(size: "42"),
                        ukuran(size: "43"),
                        ukuran(size: "44"),
                        ukuran(size: "45"),
                        ukuran(size: "46"),
                      ],
                    )),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "322,000 IDR",
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    discount(),
                    Text(
                      "350,000 IDR",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(75, 0, 0, 0),
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                FloatingActionButton.extended(
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    backgroundColor: Color.fromARGB(255, 10, 150, 200),
                    icon: Icon(Icons.shopping_cart_outlined),
                    label: Text(
                      "Masukkan Keranjang",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ukuran extends StatelessWidget {
  const ukuran({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 40,
      margin: const EdgeInsets.only(right: 10, left: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:
            isActive ? Color.fromARGB(255, 10, 150, 200) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Color.fromARGB(255, 10, 150, 200),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isActive ? Colors.white : Color.fromARGB(255, 10, 150, 200)),
      ),
    );
  }
}

class discount extends StatelessWidget {
  const discount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 25,
      margin: EdgeInsets.only(right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromARGB(75, 255, 50, 100),
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Text(
        "8%",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    );
  }
}
