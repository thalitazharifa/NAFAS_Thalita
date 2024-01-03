import 'package:flutter/material.dart';

class BtnDeviceManagerEdit extends StatelessWidget {
  const BtnDeviceManagerEdit(
      {Key? key, required this.colorphone, required this.text1})
      : super(key: key);
  final Color colorphone;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 65,
      decoration: BoxDecoration(
        color: Color(0xFFF6F5FB),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Icon(
              Icons.phone_android,
              color: colorphone,
              size: 35,
            ),
          ),
          Text(
            text1,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF403572),
            ),
          ),
          Spacer(),
          Icon(Icons.edit_outlined, color: Colors.black),
        ],
      ),
    );
  }
}
