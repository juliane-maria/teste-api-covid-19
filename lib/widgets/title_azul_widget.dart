import 'package:flutter/material.dart';

class TitleAzulWidget extends StatelessWidget {
  final String text;
  const TitleAzulWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 20),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 15, 44, 68),
        ),
      ),
    );
  }
}
