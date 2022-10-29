import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tutorify/main.dart';
import 'package:provider/provider.dart';
import 'package:tutorify/providers/tutorinfo.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).primaryColor,
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
            Divider(
              color: Colors.black,
              height: 20,
              thickness: 0.2,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 86.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3.0,
                        blurRadius: 5.0)
                  ],
                  color: Colors.white),
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onTap: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),
                  );
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: IconButton(
                      onPressed: () {
                        showSearch(
                          context: context,
                          delegate: CustomSearchDelegate(),
                        );
                      },
                      icon: Icon(Icons.search),
                    ),
                    hintText: '   Search for lessons  |  Tutor Name '),
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
                      minimumSize: Size(170.0, 47.0),
                    ),
                    onPressed: () => {},
                    child: Text(
                      'Filter',
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
                      side: BorderSide(width: 3, color: Colors.white10),
                      shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(16),
                      ),
                      minimumSize: Size(170.0, 47.0),
                    ),
                    onPressed: () => context.go('/SecondPage'),
                    child: Text(
                      'Sort by',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            TutorInfo('assets/images/m3.png'),
            TutorInfo('assets/images/m4.png'),
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Mathematics',
    'Chemistry',
    'Dance',
    'Swimming',
    'Music',
    'Dance'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implemet buildResults
    List<String> matchQuery = [];
    for (var tution in searchTerms) {
      if (tution.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(tution);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String> matchQuery = [];
    for (var tution in searchTerms) {
      if (tution.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(tution);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
