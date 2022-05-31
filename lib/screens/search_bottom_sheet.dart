import 'package:flutter/material.dart';

class SearchBottomSheet extends StatefulWidget {
  const SearchBottomSheet({Key? key}) : super(key: key);

  @override
  State<SearchBottomSheet> createState() => _SearchBottomSheetState();
}

class _SearchBottomSheetState extends State<SearchBottomSheet> {

  final Color _accentColor     = Color(0xFF272727);
  final Color _containerColor  = Color(0xFFF0F2F5);
  RangeValues _currentRangeValues = RangeValues(20, 60);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: Icon(Icons.menu, color: _accentColor),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Job Search', style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w700, color: _accentColor)),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Container(
                          width: size.width - 115.0,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search for jobs',
                              hintStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300, color: Colors.grey),
                              contentPadding: EdgeInsets.all(10.0),
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25.0),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(builder: (context, StateSetter setState) {
                                  return Container(
                                    width: size.width,
                                    height: size.height*0.6,
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Container(
                                              width: 50.0,
                                              height: 5.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                color: _accentColor,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 15.0),
                                          Text('Category', style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700, color: _accentColor)),
                                          const SizedBox(height: 15.0),
                                          Wrap(
                                            spacing: 10.0,
                                            runSpacing: 10.0,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: _accentColor,
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                                                ),
                                                width: 80,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Center(
                                                    child: Text('iOS', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500, color: Colors.white)),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: _accentColor,
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                                                ),
                                                width: 90,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Center(
                                                    child: Text('Android', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500, color: Colors.white)),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: _containerColor,
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                                                ),
                                                width: 100,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Center(
                                                    child: Text('Frontend', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500, color: _accentColor)),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: _containerColor,
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                                                ),
                                                width: 100,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Center(
                                                    child: Text('Backend', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500, color: _accentColor)),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: _containerColor,
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                                                ),
                                                width: 100,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Center(
                                                    child: Text('Network', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500, color: _accentColor)),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: _containerColor,
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                                                ),
                                                width: 80,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Center(
                                                    child: Text('UI/UX', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500, color: _accentColor)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 35.0),
                                          Text('Salary Range', style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700, color: _accentColor)),
                                          const SizedBox(height: 15.0),
                                          RangeSlider(
                                            values: _currentRangeValues,
                                            max: 100,
                                            divisions: 5,
                                            labels: RangeLabels(
                                              _currentRangeValues.start.round().toString(),
                                              _currentRangeValues.end.round().toString(),
                                            ),
                                            activeColor: _accentColor,
                                            inactiveColor: _containerColor,
                                            onChanged: (RangeValues values) {
                                              setState(() {
                                                _currentRangeValues = values;
                                              });
                                            },
                                          ),
                                          const SizedBox(height: 35.0),
                                          Text('Level', style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700, color: _accentColor)),
                                          const SizedBox(height: 10.0),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Radio(
                                                    value: 0,
                                                    groupValue: 0,
                                                    activeColor: _accentColor,
                                                    onChanged: (value) {},
                                                  ),
                                                  Text('Entry')
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Radio(
                                                    value: 1,
                                                    groupValue: 0,
                                                    onChanged: (value) {},
                                                  ),
                                                  Text('Mid')
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Radio(
                                                    value: 2,
                                                    groupValue: 0,
                                                    onChanged: (value) {},
                                                  ),
                                                  Text('Staff')
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Radio(
                                                    value: 3,
                                                    groupValue: 0,
                                                    onChanged: (value) {},
                                                  ),
                                                  Text('Senior')
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Radio(
                                                    value: 4,
                                                    groupValue: 0,
                                                    onChanged: (value) {},
                                                  ),
                                                  Text('Manager')
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                              }
                            );
                          },
                          child: Container(
                            width: 45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: _accentColor,
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Center(
                              child: Icon(Icons.filter_list, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
