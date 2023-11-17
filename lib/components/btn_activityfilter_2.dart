import 'package:flutter/material.dart';

class BtnActivityfilter2 extends StatelessWidget {
  const BtnActivityfilter2({Key? key, required this.text1, required this.text2}) : super(key: key);
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 350,
      decoration: BoxDecoration(
          color: Color(0xFFF6F5FB), borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF403572),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF403572),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              'BEEP',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xFF403572),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
