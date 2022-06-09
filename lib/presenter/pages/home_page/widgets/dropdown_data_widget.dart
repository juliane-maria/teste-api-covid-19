import 'package:flutter/material.dart';

class DropdownDataWidget extends StatelessWidget {
  final String text;
  const DropdownDataWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 140),
          child: DropdownButton<dynamic>(
            underline: Container(),
            items: [
              DropdownMenuItem(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 9, 131, 231),
                  ),
                ),
              )
            ],
            onChanged: (value) {},
            icon: const Icon(Icons.keyboard_arrow_down),
          ),
        ),
      ],
    );
  }
}
