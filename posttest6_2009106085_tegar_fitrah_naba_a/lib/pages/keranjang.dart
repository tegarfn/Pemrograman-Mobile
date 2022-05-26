import 'package:flutter/material.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/pages/home.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/pages/profil.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/pages/shop.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/widgets/color.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/widgets/drawer.dart';

class Keranjang extends StatelessWidget {
  Keranjang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController namaCtrl = TextEditingController();
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          title: Text("Garte Shoes"),
          backgroundColor: primary,
        ),
        endDrawer: AppDrawer(
            home: Home(), shop: Shop(), cart: Keranjang(), profile: Profil()),
        body: ListView(
          children: [Text("Fitur Belum Ada")],
        ));
  }
}
