import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/widgets/color.dart';

class AddtoCart extends StatelessWidget {
  AddtoCart(
      {Key? key,
      required this.branda,
      required this.namaa,
      required this.hargaa})
      : super(key: key);

  final String branda;
  final String namaa;
  final String hargaa;

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("users");
    return Container(
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(orange),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)))),
          onPressed: () {
            users.add({"brand": branda, "nama": namaa, "harga": hargaa});
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text("Data berhasil ditambahkan")
              ],
            )));
          },
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    hargaa,
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Add to Cart",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.shopping_bag,
                    size: 16,
                  )
                ],
              )
            ],
          )),
    );
  }
}
