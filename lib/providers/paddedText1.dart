import 'package:flutter/material.dart';

class PaddedText1 extends StatelessWidget with ChangeNotifier {
  final String data;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  PaddedText1(this.data, this.color, this.fontSize, this.fontWeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(11, 10, 0, 0),
      child: Text(
        data,
        style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: fontWeight,
            color: color,
            fontSize: fontSize),
      ),
    );
  }
}