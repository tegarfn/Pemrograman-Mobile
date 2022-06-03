import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas2_tegar_fitrah/widgets/color.dart';
import 'package:tugas2_tegar_fitrah/pages/productDetail.dart';

class Product extends StatelessWidget {
  const Product({
    Key? key,
    required this.img,
    required this.brand,
    required this.nama,
    required this.harga,
  }) : super(key: key);

  final String img;
  final String brand;
  final String nama;
  final String harga;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  img,
                  height: MediaQuery.of(context).size.width / 1.125,
                  width: MediaQuery.of(context).size.width / 1.125,
                ),
                SizedBox(
                  height: 15,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: brand + " ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: orange),
                  ),
                  TextSpan(
                    text: nama,
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600, color: dark),
                  ),
                ])),
                Text(
                  harga,
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400, color: dark),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Positioned.fill(
                child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Get.to(() => DetailPage(
                        imgd: img,
                        brandd: brand,
                        namad: nama,
                        hargad: harga,
                      ));
                },
                splashColor: orange.withOpacity(0.5),
              ),
            )),
          ],
        ));
  }
}
