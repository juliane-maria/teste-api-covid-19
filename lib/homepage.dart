import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:teste_covid_api/widgets/card_ind_widget.dart';
import 'package:teste_covid_api/widgets/dropdown_data_widget.dart';
import 'package:teste_covid_api/widgets/line_chart_widget.dart';
import 'package:teste_covid_api/widgets/subtitle_grey_widget.dart';
import 'package:teste_covid_api/widgets/tabBar_widget.dart';
import 'package:teste_covid_api/widgets/title_azul_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Current outbreak",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 15, 44, 68),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Stack(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 14.0, right: 0),
                  child: DropdownButton<dynamic>(
                      items: const [
                        DropdownMenuItem(
                          child: Text(
                            'Indonésia',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 15, 44, 68),
                            ),
                          ),
                        )
                      ],
                      onChanged: (value) {},
                      icon: const Icon(Icons.keyboard_arrow_down)),
                ),
              ],
            ),
            SubtitleGreyWidget(text: 'Wed,25 Mar 20'),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 40, bottom: 15),
                              child: Text(
                                "Self Check-Up Covid-19",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Contain severed list of questions to check your physical condition.",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        width: 390,
                        height: 150,
                        color: Color.fromARGB(255, 15, 44, 68),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 390,
                    height: 150,
                    color: Color.fromARGB(255, 15, 44, 68),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      TitleAzulWidget(text: 'Covid-19 Lastet Update'),
                      SubtitleGreyWidget(text: 'Last updated 25 Mar 20 16:37 '),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 85),
                    child: Text(
                      'Details',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 29, 136, 222),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CardIndWidget(
                  title: '750',
                  subTitle: 'infected',
                  color: Colors.orange,
                  icon: Icons.add,
                ),
                CardIndWidget(
                  title: '31',
                  subTitle: 'recovered',
                  color: Colors.green,
                  icon: Icons.favorite,
                ),
                CardIndWidget(
                  title: '58',
                  subTitle: 'death',
                  color: Colors.red,
                  icon: Icons.close,
                )
              ],
            ),
            SizedBox(
              child: Row(
                children: [
                  Column(
                    children: [
                      TitleAzulWidget(text: 'Active Cases'),
                    ],
                  ),
                  DropdownDataWidget(text: '18-20 Mar'),
                ],
              ),
            ),
            TabBarWidget(
              firstTitle: Text('Daily'),
              secondTitle: Text('Weekly'),
              terceiroTitle: Text('Monthly'),
              firstChild: Padding(
                padding: const EdgeInsets.only(top: 20, right: 10),
                child: LineChartWidget(
                  dots: const [
                    FlSpot(0.2, 0.7),
                    FlSpot(1, 1.8),
                    FlSpot(2, 0.8),
                    FlSpot(2.9, 1.5),
                    FlSpot(4, 4),
                  ],
                ),
              ),
              secondChild: Padding(
                padding: const EdgeInsets.only(top: 20, right: 10),
                child: LineChartWidget(
                  dots: const [
                    FlSpot(0.2, 0.7),
                    FlSpot(1, 3),
                    FlSpot(2, 5),
                    FlSpot(2.9, 2),
                    FlSpot(4, 1),
                  ],
                ),
              ),
              terceiroChild: Padding(
                padding: const EdgeInsets.only(top: 20, right: 10),
                child: LineChartWidget(
                  dots: const [
                    FlSpot(0.2, 0.7),
                    FlSpot(1, 1.8),
                    FlSpot(2, 0.8),
                    FlSpot(2.9, 1.5),
                    FlSpot(4, 4),
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
