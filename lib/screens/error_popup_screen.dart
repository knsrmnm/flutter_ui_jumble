import 'package:flutter/material.dart';

class ErrorPopupScreen extends StatefulWidget {
  const ErrorPopupScreen({Key? key}) : super(key: key);

  @override
  State<ErrorPopupScreen> createState() => _ErrorPopupScreenState();
}

class _ErrorPopupScreenState extends State<ErrorPopupScreen> {

  final Color _accentColor = Color(0xFF272727);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(_accentColor),
              elevation: MaterialStateProperty.all<double>(10.0),
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15.0))
            ),
            child: Text('SHOW POPUP!', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800, color: Colors.white)),
            onPressed: () => showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 10.0),
                      Image.asset("assets/icons/close.png", width: 45.0),
                      const SizedBox(height: 20.0),
                      Text('Oops!', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w800, color: Color(0xFFE04F5F))),
                      const SizedBox(height: 20.0),
                      Text('Something went wrong.\nPlease try again.', textAlign: TextAlign.center, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: _accentColor, )),
                      const SizedBox(height: 30.0),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(_accentColor),
                          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0)),
                          shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ))
                        ),
                        child: Text('TRY AGAIN', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w800, color: Colors.white)),
                        onPressed: (){},
                      )
                    ],
                  ),
                );
                // return SimpleDialog(
                //   title: Text('Oops!', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800, color: Color(0xFFE04F5F))),
                //   contentPadding: EdgeInsets.all(24.0),
                //   children: [
                //     Image.asset("assets/icons/close.png", scale: 2),
                //     Text('Something went wrong.')
                //   ],
                // );
              }
            ),
          ),
        ),
      ),
    );
  }
}
