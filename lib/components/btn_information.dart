import 'package:flutter/material.dart';

class btninformation extends StatelessWidget {
  final String text1;
  final String text2;
  final IconData iconData;
  final Color colorcont;
  const btninformation({super.key, required this.text1, required this.text2, required this.iconData, required this.colorcont});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 350,
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: colorcont, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 15),
            child: Icon(
              iconData,
              color: Color(0xFF403572),
              size: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF403572),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF403572),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
