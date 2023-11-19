import 'package:flutter/material.dart';
import 'package:iot_tata/components/btn_device_manager_edit.dart';
import 'package:iot_tata/components/top_navbar.dart';

class DeviceManager extends StatefulWidget {
  const DeviceManager({Key? key}) : super(key: key);

  @override
  _DeviceManagerState createState() => _DeviceManagerState();
}

class _DeviceManagerState extends State<DeviceManager> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: TopNavbar(
                text1: 'Device Manager',
                icon1: Icons.arrow_back,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BtnDeviceManagerEdit(colorphone: Colors.green, text1: 'IOT-Device-1'),
            SizedBox(
              height: 20,
            ),
            BtnDeviceManagerEdit(colorphone: Colors.red, text1: 'IOT-Device-2'),
          ],
        ),
      ),
    );
  }
}
