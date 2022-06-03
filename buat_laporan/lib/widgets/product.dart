import 'package:flutter/material.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/widgets/color.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/pages/productDetail.dart';

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
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      imgd: img,
                      brandd: brand,
                      namad: nama,
                      hargad: harga,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 1,
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 2)
            ]),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 200,
                width: 250,
                child: Image(image: AssetImage(img)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                text: brand + " ",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w800, color: orange),
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
      ),
    );
  }
}
