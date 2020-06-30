import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

double _sliderValue = 5.5;

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _sliderValue = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            value: _sliderValue,
            max: 10,
            onChanged: (double value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Back"),
          ),
        ],
      ),
    );
  }
}
