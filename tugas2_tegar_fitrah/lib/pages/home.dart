import 'package:flutter/material.dart';
import 'package:tugas2_tegar_fitrah/controller/text_controller.dart';
import 'package:tugas2_tegar_fitrah/widgets/drawer.dart';
import 'package:tugas2_tegar_fitrah/widgets/color.dart';
import 'package:get/get.dart';
import 'keranjang.dart';
import 'profil.dart';
import 'shop.dart';

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
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("assets/poster.jpg"),
                    ),
                    Positioned.fill(
                        child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Get.to(() => Shop());
                        },
                        splashColor: orange.withOpacity(0.5),
                      ),
                    ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
