import 'package:flutter/material.dart';
import 'package:iot_tata/components/btn_info_sctivity.dart';
import 'package:iot_tata/components/top_navbar.dart';
import 'package:iot_tata/pages/activity_filter/activity_filter_1.dart';
import 'package:iot_tata/pages/activity_log_details/activity_log_detail_1.dart';
import 'package:iot_tata/pages/status_page/dust_screen.dart';
import 'package:iot_tata/pages/status_page/humidity_screen.dart';
import 'package:iot_tata/pages/status_page/methane_screen.dart';
import 'package:iot_tata/pages/status_page/temperature_screen.dart';
import 'package:iot_tata/pages/status_screen.dart';

import '../components/btn_information.dart';
import '../components/btn_observation.dart';
import 'activity_log_details/activity_log_detail_3.dart';
import 'news_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              switch (_currentIndex) {
                case 0:
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                  break;
                case 1:
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => StatusScreen()),
                  );
                  break;
                case 2:
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => NewsPage()),
                  );
                  break;
              }
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.query_stats),
              label: 'Analytics',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: 'News',
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: TopNavbar(text1: 'Home', icon1: Icons.menu),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 20, top: 30),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'IOT-Device-1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color(0xFF595085),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 160, top: 30),
                          child: Container(
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ActivityFilter1()),
                                );
                              },
                              icon: Icon(Icons.filter_alt_outlined),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: <Widget>[
                        BtnInfoSctivity(
                          text1: '24/10/23 - IOT-Device-1',
                          text2: 'Sensor went online',
                          icon1: Icons.sensors,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ActivityLogDetail1()),
                            );
                          },
                        ),
                        SizedBox(height: 10),
                        BtnInfoSctivity(
                          text1: '24/10/23 - IOT-Device-1',
                          text2: 'Gas leak detected',
                          icon1: Icons.gas_meter_outlined,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ActivityLogDetail3()),
                            );
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Current Observation : ',
                          style:
                              TextStyle(fontSize: 24, color: Color(0xFF595085)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                      child: Container(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                btnobservation(
                                  text1: 'Temperature',
                                  text2: '27°C',
                                  colorcont: Color(0xFFF6F5FB),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TemperatureScreen()),
                                    );
                                  },
                                ),
                                btnobservation(
                                  text1: 'Humidity',
                                  text2: '60%',
                                  colorcont: Color(0xFFFFF4F4),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HumidityScreen()),
                                    );
                                  },
                                ),
                                btnobservation(
                                  text1: 'Methane',
                                  text2: '22ppm',
                                  colorcont: Color(0xFFF5F9F9),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MethaneScreen()),
                                    );
                                  },
                                ),
                                btnobservation(
                                  text1: 'Dust',
                                  text2: '12mg',
                                  colorcont: Color(0xFFFDF9FB),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DustScreen()),
                                    );
                                  },
                                ),
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Just for you !',
                          style:
                              TextStyle(fontSize: 24, color: Color(0xFF595085)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                      child: Container(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: <Widget>[
                                btninformation(
                                    text1: 'Hot Temperature',
                                    text2: 'Drink Water',
                                    iconData: Icons.hot_tub,
                                    colorcont: Color(0xFFF6F5FB)),
                                btninformation(
                                    text1: 'Cold Temperature',
                                    text2: 'Wear Jacket',
                                    iconData: Icons.severe_cold,
                                    colorcont: Color(0xFFFFF4F4)),
                                btninformation(
                                    text1: 'Gas Leak',
                                    text2: 'Leave the Area',
                                    iconData: Icons.oil_barrel,
                                    colorcont: Color(0xFFF5F9F9)),
                                btninformation(
                                    text1: 'Hot Temperature',
                                    text2: 'Drink Water',
                                    iconData: Icons.hot_tub,
                                    colorcont: Color(0xFFF6F5FB)),
                                btninformation(
                                    text1: 'Cold Temperature',
                                    text2: 'Wear Jacket',
                                    iconData: Icons.severe_cold,
                                    colorcont: Color(0xFFFFF4F4)),
                                btninformation(
                                    text1: 'Gas Leak',
                                    text2: 'Leave the Area',
                                    iconData: Icons.oil_barrel,
                                    colorcont: Color(0xFFF5F9F9)),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
