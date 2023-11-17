import 'package:flutter/material.dart';

import '../../components/btn_activityfilter.dart';
import '../../components/btn_activityfilter_2.dart';
import '../../components/top_navbar.dart';

class ActivityFilter2 extends StatefulWidget {
  const ActivityFilter2({Key? key}) : super(key: key);

  @override
  _ActivityFilter2State createState() => _ActivityFilter2State();
}

class _ActivityFilter2State extends State<ActivityFilter2> {
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
                  Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color(0xFFF6F5FB),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('All Devices', style: TextStyle(
                            color: Color(0xFF403572),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  BtnActivityfilter2(
                    text1: 'Online',
                    text2: 'IOT-Device-1',
                  ),
                  SizedBox(height: 20),
                  BtnActivityfilter2(
                    text1: 'Offline',
                    text2: 'IOT-Device-2',
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
