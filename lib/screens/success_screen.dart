import 'package:flutter/material.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text('success', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black)),
        leading: GestureDetector(
          onTap: (){},
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 70.0),
                Image.asset("assets/icons/accept.png", width: 80.0),
                const SizedBox(height: 50.0),
                Text('Payment completed', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color: Colors.black)),
                const SizedBox(height: 30.0),
                Container(
                  width: size.width - 120.0,
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.grey[400], height: 1.4), textAlign: TextAlign.center),
                ),
                const SizedBox(height: 50.0),
                Text('Continue shopping', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w700, fontSize: 14.0)),
                const SizedBox(height: 200.0),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                      height: 50.0,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      child: Center(
                        child: Text('Back to home', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15.0)),
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
