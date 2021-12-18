import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: BallPage(),
      ),
    );

// BallPage
class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: const SourceSansProText(
          text: 'Ask Me Anything',
        ),
      ),
      body: const BallPageBody(),
    );
  }
}

// Ball Page Body
class BallPageBody extends StatefulWidget {
  const BallPageBody({Key? key}) : super(key: key);

  @override
  _BallPageBodyState createState() => _BallPageBodyState();
}

class _BallPageBodyState extends State<BallPageBody> {
  int _ballNumber = 1;

  _randomize() {
    setState(() {
      _ballNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: _randomize,
        child: Image.asset('assets/images/ball$_ballNumber.png'),
      ),
    );
  }
}

// Dynamic Text
class SourceSansProText extends StatelessWidget {
  final String text;
  final Color? fontColor;

  const SourceSansProText(
      {Key? key, this.text = 'App Bar', this.fontColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: fontColor,
        fontFamily: 'Source Sans Pro',
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
