import 'package:flutter/material.dart';

class sizeButton extends StatelessWidget {
  const sizeButton({Key? key, required this.foot}) : super(key: key);

  final String foot;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(foot,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          )),
    );
  }
}
