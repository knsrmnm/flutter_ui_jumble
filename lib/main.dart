import 'package:flutter/material.dart';
import 'package:flutter_ui_jumble/screens/ripple_animation/ripple_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Jumble',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RipplesAnimation()
    );
  }
}
