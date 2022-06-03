import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/controller/text_controller.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/pages/home.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextController tc = Get.put(TextController());
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.to(Home());
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, right: 25, bottom: 25, left: 25),
              child: Column(
                children: [
                  TextField(
                    controller: tc.nameCtrl,
                    decoration: InputDecoration(
                        labelText: "Nama", hintText: "Masukkan nama..."),
                  ),
                  TextField(
                    controller: tc.mailCtrl,
                    decoration: InputDecoration(
                        labelText: "Email", hintText: "Masukkan email..."),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: tc.onPressed, child: Text("Submit")),
                ],
              ),
            )
          ],
        ));
  }
}
