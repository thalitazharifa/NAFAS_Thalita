import 'package:flutter/material.dart';

class BtnSettings extends StatelessWidget {
  const BtnSettings(
      {Key? key, required this.text1, required this.text2, required this.icon1, required this.sizefont1, required this.colorfont, required this.colorcont, required this.coloricon, required this.heightcon})
      : super(key: key);
  final String text1, text2;
  final IconData icon1;
  final double sizefont1;
  final Color colorfont, colorcont, coloricon;
  final double heightcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: heightcon,
      decoration: BoxDecoration(
        color: colorcont,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon1,
              size: 30,
              color: coloricon,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text1,
              style: TextStyle(
                color: colorfont,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text2,
              style: TextStyle(
                color: colorfont,
                fontWeight: FontWeight.w400,
                fontSize: sizefont1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
