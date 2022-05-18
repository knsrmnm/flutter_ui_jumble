import 'package:flutter/material.dart';

class TouchIdScreen extends StatefulWidget {
  const TouchIdScreen({Key? key}) : super(key: key);

  @override
  State<TouchIdScreen> createState() => _TouchIdScreenState();
}

class _TouchIdScreenState extends State<TouchIdScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 150.0),
                Image.asset("assets/icons/fingerprint.png", width: 70.0),
                const SizedBox(height: 40.0),
                Text("Sign in with Touch ID", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
                const SizedBox(height: 25.0),
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.grey), textAlign: TextAlign.center),
                const SizedBox(height: 80.0),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                      height: 50.0,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Color(0xFFFF5A5F),
                          borderRadius: BorderRadius.all(Radius.circular(35.0))
                      ),
                      child: Center(
                        child: Text('Sign in with Email', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15.0)),
                      )
                  ),
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 12.5)),
                    const SizedBox(width: 8.0),
                    Text('Sign Up', style: TextStyle(color: Color(0xFFFF5A5F), fontWeight: FontWeight.w700, fontSize: 12.5)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
