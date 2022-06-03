import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:tugas2_tegar_fitrah/widgets/alert_dialog.dart';
import 'package:tugas2_tegar_fitrah/widgets/color.dart';

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
