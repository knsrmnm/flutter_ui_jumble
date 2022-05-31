import 'package:flutter/material.dart';

class TaskManagementScreen extends StatefulWidget {
  const TaskManagementScreen({Key? key}) : super(key: key);

  @override
  State<TaskManagementScreen> createState() => _TaskManagementScreenState();
}

class _TaskManagementScreenState extends State<TaskManagementScreen> {

  final Color _accentColor = Color(0xFF272727);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios_outlined, color: _accentColor),
        ),
        title: Text('Task', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800, color: _accentColor)),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text('Sun', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey)),
                        Text('10', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800, color: _accentColor)),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text('Mon', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey)),
                        Text('11', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800, color: _accentColor)),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text('Tue', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey)),
                        Text('12', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800, color: _accentColor)),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text('Wed', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey)),
                        Text('13', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800, color: _accentColor)),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text('Thu', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey)),
                        Text('14', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800, color: _accentColor)),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text('Fri', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey)),
                        Text('15', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800, color: _accentColor)),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text('Sat', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey)),
                        Text('16', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800, color: _accentColor)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: _accentColor,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('💪 Morning Gym', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: Colors.white)),
                              Text('9:00 AM', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.white)),
                            ],
                          ),
                          const SizedBox(height: 15.0),
                          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.grey[400]))
                        ],
                      ),
                      const SizedBox(height: 50.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Meeting', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: Colors.white)),
                              Text('10:00 AM', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.white)),
                            ],
                          ),
                          const SizedBox(height: 15.0),
                          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.grey[400]))
                        ],
                      ),
                      const SizedBox(height: 50.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('🍔 Lunch', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: Colors.white)),
                              Text('11:30 AM', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.white)),
                            ],
                          ),
                          const SizedBox(height: 15.0),
                          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.grey[400]))
                        ],
                      ),
                      const SizedBox(height: 50.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('🧑‍💻 Bug Fixing', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: Colors.white)),
                              Text('3:00 PM', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.white)),
                            ],
                          ),
                          const SizedBox(height: 15.0),
                          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.grey[400]))
                        ],
                      ),
                    ],
                  ),
                )
              )
          )
        ],
      ),
    );
  }
}
