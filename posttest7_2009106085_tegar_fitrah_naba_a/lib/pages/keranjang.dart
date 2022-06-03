import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/pages/home.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/pages/profil.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/pages/shop.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/widgets/color.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/widgets/drawer.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/widgets/list.dart';

class Keranjang extends StatelessWidget {
  Keranjang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    final Stream<QuerySnapshot> _usersStream =
        FirebaseFirestore.instance.collection("users").snapshots();
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
              padding:
                  EdgeInsets.only(top: 50, right: 25, bottom: 25, left: 25),
              child: Text(
                "Keranjang",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            StreamBuilder<QuerySnapshot>(
                stream: _usersStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: snapshot.data!.docs
                          .map(
                            (e) => List(
                              merkl: e.get("brand"),
                              namal: e.get("nama"),
                              hargal: e.get("harga"),
                              onDelete: () {
                                users.doc(e.id).delete();
                              },
                            ),
                          )
                          .toList(),
                    );
                  }
                  return Text("loading");
                })
          ],
        ));
  }
}
