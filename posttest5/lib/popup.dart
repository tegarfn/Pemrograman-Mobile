import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title: Text(
      "Berhasil Ditambahkan",
      textAlign: TextAlign.center,
    ),
    content: Icon(
      Icons.check_circle_outline_rounded,
      size: 200,
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
