import 'package:flutter/material.dart';
import 'package:posttest7_2009106085_tegar_fitrah_naba_a/widgets/color.dart';

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title: Text(
      "Berhasil Ditambahkan",
      textAlign: TextAlign.center,
    ),
    content: Icon(
      Icons.check_circle_outline_rounded,
      size: 200,
      color: orange,
    ),
    actions: [
      TextButton(
        child: Text("Kembali"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
