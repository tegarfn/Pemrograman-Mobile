import 'package:flutter/material.dart';
import 'package:tugas2_tegar_fitrah/pages/home.dart';
import 'package:tugas2_tegar_fitrah/pages/profil.dart';
import 'package:tugas2_tegar_fitrah/pages/shop.dart';
import 'package:tugas2_tegar_fitrah/widgets/color.dart';
import 'package:tugas2_tegar_fitrah/widgets/drawer.dart';

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
