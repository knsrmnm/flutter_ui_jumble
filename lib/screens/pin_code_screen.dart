import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {

  final Color _accentColor = Color(0xFF272727);
  String _currentText = "";
  var onTapRecognizer;
  TextEditingController _textEditingController = TextEditingController();
  late StreamController<ErrorAnimationType> _errorController;

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    _errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    _errorController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFEEF4F6),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 80.0),
                Image.asset("assets/icons/password.png", width: 40.0),
                const SizedBox(height: 30.0),
                Text('Please enter your PIN code.', style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600, color: _accentColor)),
                const SizedBox(height: 50.0),
                Container(
                  width: size.width * 0.6,
                  child: PinCodeTextField(
                    appContext: context,
                    controller: _textEditingController,
                    errorAnimationController: _errorController,
                    keyboardType: TextInputType.number,
                    length: 4,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        _currentText = value;
                      });
                    },
                    obscureText: true,
                    obscuringCharacter: '*',
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      inactiveColor: _accentColor,
                      borderWidth: 3.5,
                    ),
                  ),
                ),
                const SizedBox(height: 50.0),
                Text('Resend code', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.lightBlue)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
