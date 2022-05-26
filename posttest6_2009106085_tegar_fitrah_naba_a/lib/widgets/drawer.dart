import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/controller/text_controller.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/widgets/color.dart';

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
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => home));
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
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => shop));
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
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => cart));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => profile));
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
