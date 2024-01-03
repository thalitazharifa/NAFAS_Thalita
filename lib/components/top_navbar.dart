import 'package:flutter/material.dart';

import '../pages/page_profile.dart';

class TopNavbar extends StatelessWidget {
  const TopNavbar({Key? key, required this.text1, this.icon1, this.onPressed}) : super(key: key);
  final String text1;
  final IconData? icon1;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: onPressed,
            icon: Icon(icon1),
          ),
          Spacer(),
          Text(
            text1,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF595085)),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageProfile()),
              );
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
