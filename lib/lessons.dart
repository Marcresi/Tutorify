import 'package:flutter/material.dart';
import 'package:tutorify/main.dart';
import 'package:go_router/go_router.dart';
import 'package:tutorify/providers/paddedText1.dart';
import 'package:tutorify/providers/paddedText2.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({super.key});

  @override
  State<LessonPage> createState() => LessonPageState();
}

class LessonPageState extends State<LessonPage> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 0,
      backgroundColor: MyApp.primaryColor,
      title: const Text('Tutorify'),
      actions: <Widget>[
        IconButton(
          padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
          iconSize: 30.0,
          color: MyApp.accentColor,
          onPressed: () => (context),
          icon: const Icon(Icons.menu),
        ),
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            PaddedText1("Learn Your Lessons Here",Colors.black ,30.0,FontWeight.bold )
          ])));}}