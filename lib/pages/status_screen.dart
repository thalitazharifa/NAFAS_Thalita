import 'package:flutter/material.dart';
import 'package:iot_tata/pages/page_profile.dart';

import '../components/btn_analytics.dart';
import 'dashboard.dart';
import 'news_page.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  int _currentIndex = 1;
  @override
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
              child: Container(
                height: 40,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {

                      },
                      icon: Icon(Icons.menu),
                    ),
                    Spacer(),
                    Text(
                      'Status',
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'IOT-Device-1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF595085),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xFF595085),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Container(
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget> [
                        btnanalytics(text1: 'Temperature', text2: '27°C', iconData: Icons.device_thermostat, colorcont: Color(0xFFF6F5FB), colorfont: Color(0xFF403572), coloricon: Color(0xFF403572)),
                        btnanalytics(text1: 'Humidity', text2: '60%', iconData: Icons.water_drop, colorcont: Color(0xFFFFF4F4), colorfont: Color(0xFFFF3726), coloricon: Color(0xFFFF3726)),
                        btnanalytics(text1: 'Methane', text2: '22ppm', iconData: Icons.gas_meter, colorcont: Color(0xFFF5F9F9), colorfont: Color(0xFF479696), coloricon: Color(0xFF479696)),
                        btnanalytics(text1: 'Dust', text2: '12mg/m³', iconData: Icons.factory, colorcont: Color(0xFFFDF9FB), colorfont: Color(0xFFC93F8D), coloricon: Color(0xFFC93F8D)),
                        btnanalytics(text1: 'Sensor', text2: 'Active', iconData: Icons.sensors, colorcont: Color(0xFFF2FDEF), colorfont: Color(0xFF72B062), coloricon: Color(0xFF72B062)),
                      ],
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
