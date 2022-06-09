import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartWidget extends StatelessWidget {
  final List<FlSpot> dots;
  LineChartWidget({Key? key, required this.dots}) : super(key: key);

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          titlesData: FlTitlesData(
            show: false,
          ),
          borderData: FlBorderData(show: false),
          gridData: FlGridData(show: false),
          minX: 0,
          maxX: 4,
          minY: 0,
          maxY: 4,
          backgroundColor: Colors.white,
          lineBarsData: [
            LineChartBarData(
              spots: dots,
              isCurved: true,
              color: Color.fromARGB(255, 29, 136, 222),
              dotData: FlDotData(),
              belowBarData: BarAreaData(show: true, color: Colors.blue[50]),
              showingIndicators: [2, 3],
              shadow: Shadow(
                color: Color.fromARGB(255, 9, 122, 209),
                blurRadius: 8,
              ),
            ),
          ],
        ),
      );
}
