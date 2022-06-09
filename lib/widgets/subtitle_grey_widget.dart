import 'package:flutter/material.dart';

class SubtitleGreyWidget extends StatelessWidget {
  final String text;
  const SubtitleGreyWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 14, left: 14.0, right: 0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
