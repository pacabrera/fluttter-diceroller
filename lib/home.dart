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

  void rollDice() {
    var random = (1 + Random().nextInt(6));
    AssetImage newImage;
    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;

      default:
    }
    setState(() {
      diceImage = newImage;
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
              ),
              Container(
                child: RaisedButton(
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                  child: Text(
                    'Roll the Dice',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: rollDice,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
