import 'package:flutter/material.dart';
import 'package:tutorify/main.dart';
import 'package:provider/provider.dart';
import 'providers/mainText.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 0,
      backgroundColor: MyApp.primaryColor,
      title: const Text('Tutorify'),
      actions: [
        IconButton(
          padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
          iconSize: 30.0,
          color: MyApp.accentColor,
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: MainText(),
      ),
    );
  }
}
