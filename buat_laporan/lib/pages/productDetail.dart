import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/widgets/color.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/widgets/addtocart.dart';
import 'package:posttest6_2009106085_tegar_fitrah_naba_a/widgets/size.dart';

class DetailPage extends StatefulWidget {
  DetailPage(
      {Key? key,
      required this.imgd,
      required this.brandd,
      required this.namad,
      required this.hargad})
      : super(key: key);

  final String imgd;
  final String brandd;
  final String namad;
  final String hargad;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

bool choose = false;

class _DetailPageState extends State<DetailPage> {
  List<bool> isSelected = [
    true,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
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
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.imgd))),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.brandd,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Text(
                  widget.namad,
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 20),
                Text(
                  "Ukuran",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ToggleButtons(
                          isSelected: isSelected,
                          selectedColor: white,
                          color: dark,
                          fillColor: orange,
                          renderBorder: false,
                          children: [
                            sizeButton(foot: "40"),
                            sizeButton(foot: "41"),
                            sizeButton(foot: "42"),
                            sizeButton(foot: "43"),
                            sizeButton(foot: "44"),
                            sizeButton(foot: "45"),
                          ],
                          onPressed: (int newIndex) {
                            setState(() {
                              for (int index = 0;
                                  index < isSelected.length;
                                  index++) {
                                if (index == newIndex) {
                                  isSelected[index] = true;
                                } else {
                                  isSelected[index] = false;
                                }
                              }
                            });
                          },
                        )
                      ],
                    )),
                SizedBox(height: 20),
                Text("Material",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                Text(
                    "Upper : 12 oz canvas\nToe Cap : Suede\nThread : Nylon\nEyelets : Alumunium Silver + Ring\nInsole : Ultralite Foam\nFoxing : Rubber\nOutsole : Rubber\nStripe : Suede"),
                SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: Colors.transparent,
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: AddtoCart(harga: widget.hargad),
        ),
      ),
    );
  }
}
