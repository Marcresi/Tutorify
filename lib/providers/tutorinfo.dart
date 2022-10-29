import 'package:flutter/material.dart';
import 'package:tutorify/providers/paddedText1.dart';
import 'package:tutorify/providers/paddedText2.dart';

import '../main.dart';

class TutorInfo extends StatelessWidget with ChangeNotifier {

  final String name;

  TutorInfo(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 0.0, bottom: 25.0, left: 25.0, right: 25.0),
      padding: EdgeInsets.only(
          top: 16.0, bottom: 5.0, left: 5.0, right: 5.0),
      height: 553.0,
      width: 377.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 10.0)
        ],
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child:
                Image.asset(name, fit: BoxFit.fill),
            height: 201.0,
            width: 344.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 30.0)
              ],
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 20, 0, 0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_circle_fill_rounded),
                ),
              ),
              PaddedText1(
                  '20 Lessons', Colors.black, 17.0, FontWeight.bold),
            ],
          ),
          PaddedText1(
              'Brooklyn Simmons', Colors.black, 17.0, FontWeight.bold),
          PaddedText2('Community Tutor', Colors.grey, 12.0),
          PaddedText1('Speaks', Colors.black, 17.0, FontWeight.bold),
          PaddedText1('English- Native | Spanish- Native',
              MyApp.accentColor, 12.0, FontWeight.bold),
          PaddedText1(
              '30 Min Trail', Colors.black, 17.0, FontWeight.bold),
          PaddedText2('IDR- 85,730.00', Colors.grey, 12.0),
          Row(
            children: [
              PaddedText1('120 Students', MyApp.accentColor, 17.0, FontWeight.bold),
              Container(
                padding: EdgeInsets.fromLTRB(123, 20, 0, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(
                          5, 142, 110, 1), //background color of button
                      side: BorderSide(
                          width: 3, color: Color.fromRGBO(5, 142, 110, 1)),
                      shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(0),
                      ),
                      minimumSize: Size(100, 20.26)),
                  onPressed: () => {},
                  child: Text(
                    'Book',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}