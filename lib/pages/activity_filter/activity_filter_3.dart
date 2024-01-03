import 'package:flutter/material.dart';

import '../../components/btn_activityfilter.dart';
import '../../components/top_navbar.dart';

class ActivityFilter3 extends StatefulWidget {
  const ActivityFilter3({Key? key}) : super(key: key);

  @override
  _ActivityFilter3State createState() => _ActivityFilter3State();
}

class _ActivityFilter3State extends State<ActivityFilter3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            children: <Widget>[
              TopNavbar(
                text1: 'Activity Filter',
                icon1: Icons.arrow_back,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 20),
              Column(
                children: <Widget>[
                  BtnActivityfilter(
                    text1: 'From Date',
                    text2: '-',
                    onPressed: () {},
                  ),
                  SizedBox(height: 20),
                  BtnActivityfilter(
                    text1: 'To Date',
                    text2: '-',
                    onPressed: () {},
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color(0xFFF6F5FB),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Apply Filter', style: TextStyle(
                          color: Color(0xFF403572),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
