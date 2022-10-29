import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';

class MainText extends StatelessWidget with ChangeNotifier{

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Divider(
          color: Colors.black,
          height: 20,
          thickness: 0.2,
          indent: 20,
          endIndent: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(31, 30, 0, 0),
              child: Text(
                'We are The Best',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: MyApp.accentColor,
                    fontSize: 20.0),
              ),
            ),
            // Divider(
            // color: MyApp.accentColor,
            // height: 30,
            // thickness: 1,
            // indent: 30,
            // endIndent: 300,
            // ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(31, 20, 0, 0),
          child: Text(
            'Learn From \nHome With',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 40.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(31, 0, 0, 0),
          child: Text(
            'The Best Online\nLanguage Tutors',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 40.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(31, 20, 0, 0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, Id interdum dui mollis .\nSuspendisse nulla:',
            style: TextStyle(
                fontFamily: 'Poppins', color: Colors.grey, fontSize: 17.0),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(31, 30, 0, 0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(
                    5, 142, 110, 1), //background color of button
                side: BorderSide(
                    width: 3, color: Color.fromRGBO(5, 142, 110, 1)),
                shape: RoundedRectangleBorder(
                  //to set border radius to button
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(239, 70.26)),
            onPressed: () => context.go('/LessonPage'),
            child: Text(
              'Try Free Lessons',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
        ),
        Container(
          child: Image.asset('assets/images/manimage1.png'),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(31, 70, 0, 0),
          child: Text(
            'What do you want to learn ?',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: MyApp.accentColor,
                fontSize: 22.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(31, 25, 0, 0),
          child: Text(
            'What We Offer',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 40.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(31, 25, 0, 0),
          child: Text(
            'I want to learn',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: MyApp.accentColor,
                fontSize: 20.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(31, 20, 0, 0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Donec urna nec faucibus ridiculus placerat ipsum. Volutpat eget ut vitae amet ullamcorper et, ante venenatis.',
            style: TextStyle(
                fontFamily: 'Poppins', color: Colors.grey, fontSize: 17.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(31, 45, 0, 0),
          child: Text(
            'Purchase your \nawesome lessons\nand find your tutors',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 35.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(31, 20, 0, 0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.Lorem habitant a tincidunt cras\naccumsan integer suscipit. Libero accumsan\neget aliquet.',
            style: TextStyle(
                fontFamily: 'Poppins', color: Colors.grey, fontSize: 14.0),
          ),
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(31, 30, 0, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: MyApp.accentColor, //background color of button
                  side: BorderSide(width: 5, color: MyApp.accentColor),
                  shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(16),
                  ),
                  minimumSize: Size(10.0, 47.0),
                ),
                onPressed: () => context.go('/LessonPage'),
                child: Text(
                  'Book Your Lessons',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(31, 30, 0, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: MyApp.primaryColor, //background color of button
                  side: BorderSide(width: 3, color: MyApp.accentColor),
                  shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(16),
                  ),
                  minimumSize: Size(10.0, 47.0),
                ),
                onPressed: () => context.go('/SecondPage'),
                child: Text(
                  'Find Your Tutors',
                  style: TextStyle(
                      color: MyApp.accentColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
              ),
            ),
          ],
        ),
        Container(
          child: Image.asset('assets/images/m2.png'),
        ),
      ],
    );
  }
}