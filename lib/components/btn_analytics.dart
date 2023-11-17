import 'package:flutter/material.dart';

class btnanalytics extends StatelessWidget {
  final String text1;
  final String text2;
  final IconData iconData;
  final Color colorfont, colorcont, coloricon;
  final VoidCallback? onPressed;

  const btnanalytics(
      {super.key,
      required this.text1,
      required this.text2,
      required this.iconData,
      required this.colorcont,
      required this.colorfont,
      required this.coloricon,
      this.onPressed});

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
              color: coloricon,
              size: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 13,
                    color: colorfont,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 24,
                    color: colorfont,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.more_vert),
              color: coloricon,
            ),
          ),
        ],
      ),
    );
  }
}
