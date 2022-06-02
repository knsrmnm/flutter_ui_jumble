import 'package:flutter/material.dart';

class StorageScreen extends StatefulWidget {
  const StorageScreen({Key? key}) : super(key: key);

  @override
  State<StorageScreen> createState() => _StorageScreenState();
}

class _StorageScreenState extends State<StorageScreen> {

  final Color _accentColor = Color(0xFF272727);
  final Color _containerColor  = Color(0xFFE5E7EA);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: _accentColor,
      appBar: AppBar(
        backgroundColor: _accentColor,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications_none, color: Colors.white),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: _accentColor,
        child: Center(
          child: Icon(Icons.add)
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('My Storage', style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w700, color: Colors.white)),
                const SizedBox(height: 20.0),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 15.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: _containerColor,
                      ),
                    ),
                    Container(
                      width: size.width*0.75,
                      height: 15.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Color(0xFF00BBD3),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Text('75.0GB of 100.0GB', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w700, color: Colors.white)),
                const SizedBox(height: 30.0),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 35.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _makeFolderEl(),
                        _makeFolderEl(),
                        _makeFolderEl(),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _makeFolderEl(),
                        _makeFolderEl(),
                        _makeFolderEl(),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _makeFolderEl(),
                        _makeFolderEl(),
                        _makeFolderEl(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _makeFolderEl() {
    return Column(
      children: [
        Image.asset("assets/icons/folder.png", width: 60.0),
        const SizedBox(height: 3.5),
        Text('folder name', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: _accentColor)),
        Text('2.4GB', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    );
  }
}
