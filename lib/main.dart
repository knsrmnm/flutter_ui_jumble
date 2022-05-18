import 'package:flutter/material.dart';
import 'package:flutter_ui_jumble/screens/sign_in_screen.dart';
import 'package:flutter_ui_jumble/screens/touch_id_screen.dart';

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
      home: TouchIdScreen()
    );
  }
}
