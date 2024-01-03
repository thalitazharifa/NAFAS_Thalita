import 'package:flutter/material.dart';
import 'package:iot_tata/components/btn_activityfilter.dart';
import 'package:iot_tata/components/top_navbar.dart';
import 'package:iot_tata/pages/activity_filter/activity_filter_2.dart';

import 'activity_filter_3.dart';

class ActivityFilter1 extends StatefulWidget {
  const ActivityFilter1({Key? key}) : super(key: key);

  @override
  _ActivityFilter1State createState() => _ActivityFilter1State();
}

class _ActivityFilter1State extends State<ActivityFilter1> {
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
                    text1: 'Selected Device',
                    text2: 'All Devices',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ActivityFilter2()),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  BtnActivityfilter(
                    text1: 'From Date',
                    text2: '-',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ActivityFilter3()),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  BtnActivityfilter(
                    text1: 'To Date',
                    text2: '-',
                    onPressed: () {},
                  ),
                  SizedBox(height: 20),
                  BtnActivityfilter(
                    text1: 'Data Type',
                    text2: 'Everything',
                    onPressed: () {},
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
