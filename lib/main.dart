import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Ball() ,
  ),
);

class Ball extends StatelessWidget {
  const Ball({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Question'),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueAccent,
      body:BallPage() ,
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  int ballNumber = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: (){
            setState(() {
              ballNumber = Random().nextInt(3) + 1;
            });

          },
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}



