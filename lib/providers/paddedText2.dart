import 'package:flutter/material.dart';

class PaddedText2 extends StatelessWidget with ChangeNotifier {
  final String data;
  final Color color;
  final double fontSize;
  PaddedText2(this.data, this.color, this.fontSize);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(11, 10, 0, 0),
      child: Text(
        data,
        style:
            TextStyle(fontFamily: 'Poppins', color: color, fontSize: fontSize),
      ),
    );
  }
}