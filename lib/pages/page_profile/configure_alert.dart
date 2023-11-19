import 'package:flutter/material.dart';
import 'package:iot_tata/components/slider_configure_alert.dart';

import '../../components/top_navbar.dart';

class ConfigureAlert extends StatefulWidget {
  const ConfigureAlert({Key? key}) : super(key: key);

  @override
  _ConfigureAlertState createState() => _ConfigureAlertState();
}

class _ConfigureAlertState extends State<ConfigureAlert> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: TopNavbar(
                text1: 'Configure Alert',
                icon1: Icons.arrow_back,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SliderConfigureAlert(text1: 'Temperature'),
            SizedBox(
              height: 20,
            ),
            SliderConfigureAlert(text1: 'Humidity'),
            SizedBox(
              height: 20,
            ),
            SliderConfigureAlert(text1: 'Gas'),
            SizedBox(
              height: 20,
            ),
            SliderConfigureAlert(text1: 'Dust'),
          ],
        ),
      ),
    );
  }
}
