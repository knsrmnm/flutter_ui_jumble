import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TravelSpotScreen extends StatefulWidget {
  const TravelSpotScreen({Key? key}) : super(key: key);

  @override
  State<TravelSpotScreen> createState() => _TravelSpotScreenState();
}

class _TravelSpotScreenState extends State<TravelSpotScreen> {
  @override
  Widget build(BuildContext context) {

    final PageController _controller = PageController();

    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          Stack(
            fit: StackFit.expand,
            children: [
              Image.asset("assets/images/sorasak-_UIN-pFfJ7c-unsplash.jpg", fit: BoxFit.cover),
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color(0xFF00060d).withOpacity(0.8),
                        ],
                        stops: const [
                          0.0,
                          1.0,
                        ]
                    )
                ),
              ),
              Align(
                alignment: Alignment(-0.7, 0.7),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hokan-ji Temple', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700, color: Colors.white)),
                      const SizedBox(height: 20.0),
                      Text('Hokan-ji Temple is known colloquially as Yasaka-no-to (Yasaka Pagoda).\nOriginally built by the Imperial Prince Shotoku in 589, the pagoda is said to have been inspired by a dream.', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300, color: Colors.grey[300], height: 1.5)),
                      const SizedBox(height: 25.0),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 4.5,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 18.0,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          const SizedBox(width: 5.0),
                          Text('4.5', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300, color: Colors.white))
                        ],
                      ),
                      const SizedBox(height: 80.0),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Center(child: Text('See details', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800, color: Colors.black)))
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.8, -0.8),
                child: Icon(Icons.close, color: Colors.white, size: 25.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
