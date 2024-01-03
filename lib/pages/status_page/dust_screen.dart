import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../components/btn_settings.dart';
import '../../components/top_navbar.dart';

class DustScreen extends StatefulWidget {
  const DustScreen({Key? key}) : super(key: key);

  @override
  _DustScreenState createState() => _DustScreenState();
}

class _DustScreenState extends State<DustScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: TopNavbar(
                  text1: 'Dust',
                  icon1: Icons.arrow_back,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Container(
                height: 270,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xFFF6F5FB),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            'Last 10 Days',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF403572),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Color(0xFF595085),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        height: 200,
                        width: 350,
                        child: LineChart(
                          LineChartData(
                              gridData: FlGridData(show: true),
                              titlesData: FlTitlesData(
                                show: true,
                                rightTitles: const AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: false,
                                  ),
                                ),
                                topTitles: const AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: false,
                                  ),
                                ),
                              ),
                              borderData: FlBorderData(
                                show: true,
                                border:
                                    Border.all(color: Colors.blue, width: 1),
                              ),
                              minX: 0,
                              maxX: 10,
                              minY: 0,
                              maxY: 10,
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    FlSpot(0, 1),
                                    FlSpot(2, 2),
                                    FlSpot(3, 4),
                                    FlSpot(4, 8),
                                    FlSpot(5, 4),
                                    FlSpot(6, 3),
                                    FlSpot(7, 4),
                                    FlSpot(8, 6),
                                    FlSpot(9, 6),
                                    FlSpot(10, 6),
                                  ],
                                  isCurved: true,
                                  color: Colors.blue,
                                  dotData: FlDotData(show: false),
                                  belowBarData: BarAreaData(show: false),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  children: <Widget>[
                    BtnSettings(
                      text1: 'Average \nDust',
                      text2: '27°C',
                      icon1: Icons.av_timer,
                      sizefont1: 24,
                      colorfont: Color(0xFF3D3270),
                      colorcont: Color(0xFFF6F5FB),
                      coloricon: Color(0xFF3D3270),
                      heightcon: 100.0,
                    ),
                    BtnSettings(
                      text1: 'Highest \nDust',
                      text2: '30°C',
                      icon1: Icons.hdr_strong,
                      sizefont1: 24,
                      colorfont: Color(0xFF479696),
                      colorcont: Color(0xFFF5F9F9),
                      coloricon: Color(0xFF479696),
                      heightcon: 100,
                    ),
                    BtnSettings(
                      text1: 'Lowest \nDust',
                      text2: '25°C',
                      icon1: Icons.hdr_strong,
                      sizefont1: 24,
                      colorfont: Color(0xFFFF5648),
                      colorcont: Color(0xFFFFF4F4),
                      coloricon: Color(0xFFFF5648),
                      heightcon: 100,
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
