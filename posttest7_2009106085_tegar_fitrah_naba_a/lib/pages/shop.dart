import 'package:flutter/material.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/pages/keranjang.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/widgets/color.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/widgets/drawer.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/widgets/product.dart';
import 'home.dart';
import 'profil.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: Text("Garte Shoes"),
        backgroundColor: primary,
      ),
      endDrawer: AppDrawer(
          home: Home(), shop: Shop(), cart: Keranjang(), profile: Profil()),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, right: 25, bottom: 25, left: 25),
            child: Row(
              children: [
                Text(
                  "Sepatu",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 25, bottom: 25, left: 25),
              child: Column(
                children: [
                  Product(
                      img: "assets/red1.jpg",
                      brand: "Ventela",
                      nama: "Public Suede",
                      harga: "300,000 IDR"),
                  SizedBox(
                    height: 30,
                  ),
                  Product(
                      img: "assets/white1.jpg",
                      brand: "Ventela",
                      nama: "Republic",
                      harga: "245,000 IDR"),
                  SizedBox(
                    height: 30,
                  ),
                  Product(
                      img: "assets/brown1.jpg",
                      brand: "Ventela",
                      nama: "Urban",
                      harga: "275,000 IDR"),
                  SizedBox(
                    height: 30,
                  ),
                  Product(
                      img: "assets/black1.jpg",
                      brand: "Ventela",
                      nama: "Back To 70's",
                      harga: "220,000 IDR"),
                ],
              )),
        ],
      ),
    );
  }
}
