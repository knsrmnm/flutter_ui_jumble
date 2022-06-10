import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LiquidTextScreen extends StatefulWidget {
  const LiquidTextScreen({Key? key}) : super(key: key);

  @override
  State<LiquidTextScreen> createState() => _LiquidTextScreenState();
}

class _LiquidTextScreenState extends State<LiquidTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Center(
          child: TextLiquidFill(
            text: 'Loading...',
            waveColor: Colors.white,
            boxBackgroundColor: Colors.blueAccent,
            textStyle: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            loadDuration: Duration(seconds: 6),
            // boxHeight: 300.0,
          ),
        ),
      ),
    );
  }
}
