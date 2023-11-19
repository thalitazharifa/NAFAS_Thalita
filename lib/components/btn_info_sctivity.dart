import 'package:flutter/material.dart';

class BtnInfoSctivity extends StatelessWidget {
  const BtnInfoSctivity(
      {Key? key, required this.text1, required this.text2, required this.icon1, required this.onPressed})
      : super(key: key);
  final IconData icon1;
  final String text1, text2;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 350,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF291C6D),
              Color(0xFFD994A7)
            ], // Adjust the colors as needed
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 15),
            child: Icon(
              icon1,
              color: Colors.white,
              size: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFFAFCEED),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
