import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {

  final Color _drawerColor = Color(0xFF3A4D7F);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF23355F),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF23355F),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: _drawerColor,
        ),
        child: SizedBox(
          width: 250,
          child: Drawer(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 45.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            color: Colors.white,
                            image: DecorationImage(image: AssetImage("assets/icons/user.png"))
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Mike Trout', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white)),
                          const SizedBox(height: 5.0),
                          Text('@accountid', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: Colors.grey[400])),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50.0),
                  Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      const SizedBox(width: 15.0),
                      Text('Search', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white))
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    children: [
                      Icon(Icons.notifications_none, color: Colors.white),
                      const SizedBox(width: 15.0),
                      Text('Notification', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white))
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    children: [
                      Icon(Icons.mail_outline, color: Colors.white),
                      const SizedBox(width: 15.0),
                      Text('Message', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white))
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    children: [
                      Icon(Icons.bookmark_border, color: Colors.white),
                      const SizedBox(width: 15.0),
                      Text('Bookmark', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white))
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    children: [
                      Icon(Icons.person_outline, color: Colors.white),
                      const SizedBox(width: 15.0),
                      Text('Profile', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
