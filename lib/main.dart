
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballCount=0;
  
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballCount=Random().nextInt(5)+1;
          });
          
          
         },
        child: Image.asset('images/ball$ballCount.png')
        ),
    );
  }
}
