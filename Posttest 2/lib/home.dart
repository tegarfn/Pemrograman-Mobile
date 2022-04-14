import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/left-arrow.png")),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20),
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
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 600,
                height: 400,
                decoration: const BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/public_suede.jpg")),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Size",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
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
              Row(
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
            ],
          ),
          button(),
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
      margin: const EdgeInsets.only(right: 12, left: 60),
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

class button extends StatelessWidget {
  const button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 55,
      margin: const EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 10, 150, 200),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        "Pesan Sekarang",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
