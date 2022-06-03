import 'package:flutter/material.dart';

class FaceIdScreen extends StatefulWidget {
  const FaceIdScreen({Key? key}) : super(key: key);

  @override
  State<FaceIdScreen> createState() => _FaceIdScreenState();
}

class _FaceIdScreenState extends State<FaceIdScreen> {
  
  final Color _accentColor = Color(0xFF164CA2);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  _accentColor.withOpacity(0.5),
                  _accentColor,
                ],
                stops: const [
                  0.0,
                  1.0,
                ]
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.1),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/icons/face-id.png", width: 130.0),
                const SizedBox(height: 20.0),
                Text('Face ID for payment', style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400, color: Colors.white)),
                const SizedBox(height: 10.0),
                Text('Use Face ID to unlock.', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: Colors.grey[400])),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50.0,
              margin: EdgeInsets.only(bottom: 100.0, right: 40.0, left: 40.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: Center(
                child: Text('START SCAN', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700, color: Colors.black)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
