import 'package:flutter/material.dart';
import 'package:slider/homepage.dart';

class PageClass extends StatefulWidget {
  PageClass({Key key}) : super(key: key);

  @override
  _PageClassState createState() => _PageClassState();
}

class _PageClassState extends State<PageClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyHomePage(),
              ),
            );
          },
          child: Text("Next"),
        ),
      ),
    );
  }
}
