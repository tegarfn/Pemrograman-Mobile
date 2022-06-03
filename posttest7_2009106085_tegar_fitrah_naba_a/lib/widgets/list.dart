import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class List extends StatelessWidget {
  List(
      {Key? key,
      required this.merkl,
      required this.namal,
      required this.hargal,
      required this.onDelete})
      : super(key: key);

  String merkl;
  String namal;
  String hargal;
  Function onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25, bottom: 25, left: 25),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      merkl,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(namal),
                    SizedBox(
                      height: 5,
                    ),
                    Text(hargal),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      onDelete();
                    },
                    icon: Icon(Icons.delete))
              ],
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white)),
    );
  }
}
