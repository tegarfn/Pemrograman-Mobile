import 'package:flutter/material.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/controller/text_controller.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/pages/keranjang.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/widgets/color.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/widgets/drawer.dart';
import 'package:get/get.dart';
import 'shop.dart';
import 'profil.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextController tc = Get.put(TextController());
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
            child: Text(
              "Halo, ${tc.name}!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 25, bottom: 25, left: 25),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (_) => Shop()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 2)
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage(
                          "assets/poster.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ))),
        ],
      ),
    );
  }
}
