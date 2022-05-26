import 'package:flutter/material.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/widgets/alert_dialog.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/widgets/color.dart';

class AddtoCart extends StatelessWidget {
  AddtoCart({Key? key, required this.harga}) : super(key: key);

  final String harga;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(orange),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)))),
          onPressed: () {
            showAlertDialog(context);
          },
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    harga,
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
