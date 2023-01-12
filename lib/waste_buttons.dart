import 'package:flutter/material.dart';
class WasteButton extends StatelessWidget {
  final display;
  const WasteButton({Key? key,
    required this.display,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [

      Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(children: [
          Text(display,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
        ),
      ),
    ],
    );
  }
}
