import 'package:flutter/material.dart';

class SimpleWeatherScreen extends StatefulWidget {
  const SimpleWeatherScreen({Key? key}) : super(key: key);

  @override
  State<SimpleWeatherScreen> createState() => _SimpleWeatherScreenState();
}

class _SimpleWeatherScreenState extends State<SimpleWeatherScreen> {

  final Color _accentColor = Color(0xFF272727);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    const SizedBox(height: 100.0),
                    Icon(Icons.wb_cloudy_outlined, size: 45.0),
                    const SizedBox(height: 15.0),
                    Text('TOKYO', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800, color: Colors.grey)),
                    const SizedBox(height: 5.0),
                    Text('25℃', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w800, color: _accentColor)),
                    const SizedBox(height: 80.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('PRESSURE', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w800, color: Colors.grey)),
                            const SizedBox(height: 5.0),
                            Text('810mb', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800, color: _accentColor)),
                          ],
                        ),
                        const SizedBox(width: 35.0),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('HUMIDITY', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w800, color: Colors.grey)),
                            const SizedBox(height: 5.0),
                            Text('73%', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800, color: _accentColor)),
                          ],
                        ),
                        const SizedBox(width: 35.0),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('WIND', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w800, color: Colors.grey)),
                            const SizedBox(height: 5.0),
                            Text('8km/h', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800, color: _accentColor)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment(0, 0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 50.0),
                        Icon(Icons.wb_cloudy_outlined, size: 25.0),
                        const SizedBox(height: 15.0),
                        Text('MON', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w800, color: Colors.grey)),
                        const SizedBox(height: 5.0),
                        Text('24℃', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800, color: _accentColor)),
                      ],
                    ),
                    const SizedBox(width: 30.0),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 50.0),
                        Icon(Icons.wb_cloudy_outlined, size: 25.0),
                        const SizedBox(height: 15.0),
                        Text('TUE', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w800, color: Colors.grey)),
                        const SizedBox(height: 5.0),
                        Text('24℃', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800, color: _accentColor)),
                      ],
                    ),
                    const SizedBox(width: 30.0),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 50.0),
                        Icon(Icons.wb_sunny_outlined, size: 25.0),
                        const SizedBox(height: 15.0),
                        Text('WED', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w800, color: Colors.grey)),
                        const SizedBox(height: 5.0),
                        Text('24℃', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800, color: _accentColor)),
                      ],
                    ),
                    const SizedBox(width: 30.0),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 50.0),
                        Icon(Icons.wb_sunny_outlined, size: 25.0),
                        const SizedBox(height: 15.0),
                        Text('THU', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w800, color: Colors.grey)),
                        const SizedBox(height: 5.0),
                        Text('24℃', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800, color: _accentColor)),
                      ],
                    ),
                    const SizedBox(width: 30.0),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 50.0),
                        Icon(Icons.wb_cloudy_outlined, size: 25.0),
                        const SizedBox(height: 15.0),
                        Text('FRI', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w800, color: Colors.grey)),
                        const SizedBox(height: 5.0),
                        Text('24℃', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800, color: _accentColor)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
