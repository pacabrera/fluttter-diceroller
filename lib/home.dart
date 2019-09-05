import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage('assets/1.png');
  AssetImage two = AssetImage('assets/2.png');
  AssetImage three = AssetImage('assets/3.png');
  AssetImage four = AssetImage('assets/4.png');
  AssetImage five = AssetImage('assets/5.png');
  AssetImage six = AssetImage('assets/6.png');

  AssetImage diceImage;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = one;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: diceImage,
                height: 200,
                width: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
