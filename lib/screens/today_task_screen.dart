import 'package:flutter/material.dart';

class TodayTaskScreen extends StatefulWidget {
  const TodayTaskScreen({Key? key}) : super(key: key);

  @override
  State<TodayTaskScreen> createState() => _TodayTaskScreenState();
}

class _TodayTaskScreenState extends State<TodayTaskScreen> {

  final Color _accentColor     = Color(0xFF272727);
  final Color _containerColor  = Color(0xFFF0F2F5);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                Text('May 31,2022', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey)),
                const SizedBox(height: 8.0),
                Text('Today\'s Task', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w800, color: _accentColor)),
                const SizedBox(height: 50.0),
                _makeTaskWidget(size, 70.0, false, true, 'Morning Exercise', '💪', '10:00 AM', ''),
                const SizedBox(height: 13.0),
                _makeTaskWidget(size, 100.0, true, true, 'Lunch', '🍔', '12:00 PM', 'Lorem Ipsum is simply dummy text.'),
                const SizedBox(height: 13.0),
                _makeTaskWidget(size, 120.0, false, false, 'Meeting', '🧑‍💻', '15:00 PM', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                const SizedBox(height: 13.0),
                _makeTaskWidget(size, 70.0, false, false, 'Task name is here', '🧑‍💻', '17:00 PM', ''),
                const SizedBox(height: 13.0),
                _makeTaskWidget(size, 100.0, false, false, 'Task name is here', '🧑‍💻', '20:00 PM', ''),
              ],
            ),
          )
        ),
      ),
    );
  }

  Widget _makeTaskWidget(Size size, double height, bool active, bool done, String task, String emoji, String time, String memo) {
    double _containerWidth = size.width - 105.0;
    double _taskBoxWidth = _containerWidth - 80.0;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: 30.0,
            child: Column(
              children: [
                Container(
                  child: active ? Icon(Icons.check, color: _accentColor) : ( done ? Icon(Icons.check, color: _containerColor) : Icon(Icons.more_horiz, color: _containerColor)),
                  height: height*0.4,
                ),
                const SizedBox(height: 5.0),
                Container(
                  height: height - (height*0.4 + 5.0),
                  width: 2.0,
                  color: _containerColor,
                )
              ],
            )
        ),
        const SizedBox(width: 15.0),
        Container(
          alignment: Alignment.topCenter,
          width: _containerWidth,
          height: height,
          decoration: BoxDecoration(
              color: active ? _accentColor : _containerColor,
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10.0),
                    Container(
                      width: 35.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Center(
                        child: Text(emoji),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      width: _taskBoxWidth*0.7,
                      child: Text(task, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700, color: active ? Colors.white : Colors.black)),
                    ),
                    const SizedBox(width: 15.0),
                    Container(
                      width: _taskBoxWidth*0.3,
                      child: Text(time, style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: active ? Colors.white : Colors.black)),
                    ),
                    const SizedBox(width: 10.0),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 5.0),
                    child: Text(memo, style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: active ? Colors.white : Colors.black)),
                  )
                )
              ],
            )
          ),
        )
      ],
    );
  }
}
