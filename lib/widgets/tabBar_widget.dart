import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'line_chart_widget.dart';

class TabBarWidget extends StatelessWidget {
  final Widget firstTitle;
  final Widget secondTitle;
  final Widget terceiroTitle;
  final Widget firstChild;
  final Widget secondChild;
  final Widget terceiroChild;
  const TabBarWidget({
    Key? key,
    required this.firstTitle,
    required this.secondTitle,
    required this.terceiroTitle,
    required this.firstChild,
    required this.secondChild,
    required this.terceiroChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      height: 180,
      color: Colors.white,
      child: ContainedTabBarView(
        tabBarProperties: TabBarProperties(
          labelColor: Color.fromARGB(255, 14, 15, 79),
          indicatorColor: Color.fromARGB(255, 4, 33, 57),
          unselectedLabelColor: Colors.grey,
          height: 30,
          background: Container(
            color: Colors.white,
          ),
        ),
        tabBarViewProperties: TabBarViewProperties(
          dragStartBehavior: DragStartBehavior.down,
        ),
        tabs: [
          firstTitle,
          secondTitle,
          terceiroTitle,
        ],
        views: [
          firstChild,
          secondChild,
          terceiroChild,
        ],
      ),
    );
  }
}
