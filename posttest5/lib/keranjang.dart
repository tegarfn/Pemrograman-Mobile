import 'package:flutter/material.dart';

class keranjang extends StatefulWidget {
  const keranjang({Key? key}) : super(key: key);

  @override
  State<keranjang> createState() => _homeState();
}

enum Jenis { ps, pd, pt, pe, pl, none }

class _homeState extends State<keranjang> {
  String model = "";
  Jenis jenis = Jenis.none;
  bool paket = false;
  final Ctrlmodel = TextEditingController();
  bool tambah = false;

  void dispose() {
    Ctrlmodel.dispose();
    super.dispose();
  }

  String getJenis(Jenis? value) {
    if (value == Jenis.ps) {
      return "41";
    } else if (value == Jenis.pd) {
      return "42";
    } else if (value == Jenis.pt) {
      return "43";
    } else if (value == Jenis.pe) {
      return "44";
    } else if (value == Jenis.pl) {
      return "45";
    } else {
      return "none";
    }
  }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Tegar Fitrah"),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "INPUT PESANAN",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: lebar,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(50, 0, 0, 0),
                        spreadRadius: 5,
                        blurRadius: 15,
                        offset: Offset(5, 10), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: Ctrlmodel,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 125, 10, 200))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 125, 10, 200))),
                      hintText: "Masukkan Model",
                      labelText: "Model",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 125, 10, 200)),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    width: lebar,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(50, 0, 0, 0),
                          spreadRadius: 5,
                          blurRadius: 15,
                          offset: Offset(5, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Ukuran",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 125, 10, 200),
                          thickness: 2,
                        ),
                        ListTile(
                          title: const Text(
                            "41",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          leading: Radio(
                            value: Jenis.ps,
                            groupValue: jenis,
                            onChanged: (Jenis? value) {
                              setState(() {
                                jenis = Jenis.ps;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text(
                            "42",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          leading: Radio(
                            value: Jenis.pd,
                            groupValue: jenis,
                            onChanged: (Jenis? value) {
                              setState(() {
                                jenis = Jenis.pd;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text(
                            "43",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          leading: Radio(
                            value: Jenis.pt,
                            groupValue: jenis,
                            onChanged: (Jenis? value) {
                              setState(() {
                                jenis = Jenis.pt;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text(
                            "44",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          leading: Radio(
                            value: Jenis.pe,
                            groupValue: jenis,
                            onChanged: (Jenis? value) {
                              setState(() {
                                jenis = Jenis.pe;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text(
                            "45",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          leading: Radio(
                            value: Jenis.pl,
                            groupValue: jenis,
                            onChanged: (Jenis? value) {
                              setState(() {
                                jenis = Jenis.pl;
                              });
                            },
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    width: lebar,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(50, 0, 0, 0),
                          spreadRadius: 5,
                          blurRadius: 15,
                          offset: Offset(5, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Paket",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 125, 10, 200),
                            thickness: 2,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: paket,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      paket = value ?? false;
                                    });
                                  }),
                              const Text(
                                "Bonus",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ])),
                const SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  padding:
                      EdgeInsets.only(top: 10, right: 50, bottom: 10, left: 50),
                  color: Color.fromARGB(255, 125, 10, 200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    "Tambah",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            scrollable: true,
                            content: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  const Text(
                                    "DATA PESANAN",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Divider(
                                    color: Color.fromARGB(255, 125, 10, 200),
                                    thickness: 2,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Model :\n$model",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Ukuran :\n${getJenis(jenis)}",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Paket :\n${paket ? 'dengan Bonus' : 'none'}",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
