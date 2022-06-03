import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas2_tegar_fitrah/controller/text_controller.dart';
import 'package:tugas2_tegar_fitrah/pages/home.dart';
import 'package:tugas2_tegar_fitrah/pages/keranjang.dart';
import 'package:tugas2_tegar_fitrah/pages/profil.dart';
import 'package:tugas2_tegar_fitrah/pages/shop.dart';
import 'package:tugas2_tegar_fitrah/widgets/color.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer(
      {Key? key,
      required this.home,
      required this.shop,
      required this.cart,
      required this.profile})
      : super(key: key);

  final Widget home, shop, cart, profile;

  @override
  Widget build(BuildContext context) {
    TextController tc = Get.put(TextController());
    return Drawer(
      backgroundColor: white,
      child: ListView(
        children: [
          DrawerHeader(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 35,
                ),
                SizedBox(height: 20),
                Text("${tc.name}"),
                Text("${tc.mail}")
              ],
            ),
          )),
          ListTile(
            title: Text("Beranda"),
            leading: Icon(
              Icons.home_rounded,
              color: dark,
            ),
            onTap: () {
              Get.to(() => Home());
            },
          ),
          Divider(
            color: Colors.black26,
          ),
          ListTile(
            title: Text("Toko"),
            leading: Icon(
              Icons.shopping_bag,
              color: dark,
            ),
            onTap: () {
              Get.to(() => Shop());
            },
          ),
          Divider(
            color: Colors.black26,
          ),
          ListTile(
            title: Text("Keranjang"),
            leading: Icon(
              Icons.shopping_bag,
              color: dark,
            ),
            onTap: () {
              Get.to(() => Keranjang());
            },
          ),
          Divider(
            color: Colors.black26,
          ),
          ListTile(
            title: Text("Profil"),
            leading: Icon(
              Icons.account_circle,
              color: dark,
            ),
            onTap: () {
              Get.to(() => Profil());
            },
          ),
          Divider(
            color: Colors.black26,
          ),
        ],
      ),
    );
  }
}
