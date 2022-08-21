import 'package:flutter/material.dart';

class BrowserScreen extends StatefulWidget {
  const BrowserScreen({Key? key}) : super(key: key);

  @override
  State<BrowserScreen> createState() => _BrowserScreenState();
}

class _BrowserScreenState extends State<BrowserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100.0),
                Center(
                  child: Image.asset("assets/icons/google.png", width: 35.0),
                ),
                const SizedBox(height: 80.0),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Search or type address',
                    hintStyle: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300, color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),
                const SizedBox(height: 80.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: Image.asset("assets/icons/twitter.png", width: 25.0),
                      ),
                    ),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: Image.asset("assets/icons/netflix.png", width: 25.0),
                      ),
                    ),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: Image.asset("assets/icons/amazon.png", width: 25.0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: Image.asset("assets/icons/airbnb.png", width: 25.0),
                      ),
                    ),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: Image.asset("assets/icons/starbucks.png", width: 25.0),
                      ),
                    ),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: Icon(Icons.add, size: 25.0, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            border: Border.all(
                              color: Color(0xFFBDBDBD),
                              width: 0.3,
                            ),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          child: Center(
                            child: Icon(Icons.star_border, size: 25.0, color: Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Text('Bookmark', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w300, color: Colors.grey)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            border: Border.all(
                              color: Color(0xFFBDBDBD),
                              width: 0.3,
                            ),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          child: Center(
                            child: Icon(Icons.history, size: 25.0, color: Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Text('History', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w300, color: Colors.grey)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            border: Border.all(
                              color: Color(0xFFBDBDBD),
                              width: 0.3,
                            ),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          child: Center(
                            child: Icon(Icons.menu_book, size: 25.0, color: Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Text('Reading List', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w300, color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 20.0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.arrow_back_ios), label: 'Back'),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_forward_ios), label: 'Forward'),
          BottomNavigationBarItem(icon: Icon(Icons.ios_share), label: 'Share'),
          BottomNavigationBarItem(icon: Icon(Icons.web_asset), label: 'Tabs'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
    );
  }
}
