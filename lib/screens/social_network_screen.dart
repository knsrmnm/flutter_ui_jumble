import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class SocialNetworkScreen extends StatefulWidget {
  const SocialNetworkScreen({Key? key}) : super(key: key);

  @override
  State<SocialNetworkScreen> createState() => _SocialNetworkScreenState();
}

class _SocialNetworkScreenState extends State<SocialNetworkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black, size: 25.0),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Badge(
              elevation: 1,
              badgeColor: Color(0xFFFF3E3E),
              position: BadgePosition.topEnd(top: 0, end: -7),
              badgeContent: Text('12', style: TextStyle(color: Colors.white)),
              child: Icon(Icons.notifications, color: Colors.black, size: 25.0),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        elevation: 0,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: Icon(Icons.speaker_notes),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black), label: '')
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.black, width: 5),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Image.asset("assets/icons/user.png", width: 35),
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                _makeTweet(),
              ],
            ),
          )
        ),
      ),
    );
  }

  Widget _makeTweet() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/icons/accept.png", width: 30.0,),
        const SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("aaaaaa"),
            Text("bbbbbbbbb"),
            Text("bbbbbbbbb"),
            Text("bbbbbbbbb"),
            Text("bbbbbbbbb"),
            Text("bbbbbbbbb"),
          ],
        )
      ],
    );
  }
}
