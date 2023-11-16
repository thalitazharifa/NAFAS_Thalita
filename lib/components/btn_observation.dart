import 'package:flutter/material.dart';

class btnobservation extends StatelessWidget {
  final String text1;
  final String text2;
  final Color colorcont;
  const btnobservation({super.key, required this.text1, required this.text2, required this.colorcont});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 100,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colorcont,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                text1,
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xFF61598B),
                ),
              ),
              Icon(Icons.more_vert,
                  size: 16,
                  color: Color(0xFF61598B)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                text2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xFF61598B),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
