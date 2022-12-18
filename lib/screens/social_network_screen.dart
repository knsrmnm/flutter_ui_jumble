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
        child: Icon(Icons.comment_outlined),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.grey[400]), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.grey[400]), label: '')
        ],
      ),
      body: SafeArea(
          child: RefreshIndicator(
            color: Colors.black,
            onRefresh: () async {
              //
            },
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _makeSingleCategoryWidget('🚀spacetech', true, false),
                        _makeSingleCategoryWidget('🦄web3', false, false),
                        _makeSingleCategoryWidget('🌎metaverse', false, false),
                        _makeSingleCategoryWidget('🎮game', false, false),
                        _makeSingleCategoryWidget('📚book', false, true),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25.0),
                _makeSingleOfficialNews('30min', 'Here is the latest news for you✋'),
                _makeSingleTweet('username', 'P', Colors.black, '45min・@accountid', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts', false),
                _makeSingleTweet('username', 'C', Colors.pink, '1h・@accountid2', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', true),
                _makeSingleTweet('username', 'D', Colors.black, '2h・@accountid3', 'Lorem ipsum dolor sit amet', true),
                _makeSingleTweet('username', 'T', Colors.red, '4h・@accountid4', 'Lorem ipsum dolor sit amet', false),
                _makeSingleTweet('username', 'U', Colors.black, 'yesterday・@accountid5', 'Lorem ipsum dolor sit amet', false),
              ],
            ),
          )
      ),
    );
  }

  Widget _makeSingleCategoryWidget(String title, bool isFirst, bool isLast) {
    double leftMargin = isFirst ? 15.0 : 5.0;
    double rightMargin = isLast ? 15.0 : 5.0;
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 35.0,
        margin: EdgeInsets.only(left: leftMargin, right: rightMargin),
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          color: Colors.grey[100],
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _makeSingleTweet(String username, String initial, Color color, String account, String body, bool hasLink) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // icon, name and datetime
          Row(
            children: [
              Container(
                width: 45.0,
                height: 45.0,
                margin: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  color: color,
                ),
                child: Center(
                  child: Text(initial, style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(username, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black)),
                  const SizedBox(height: 5.0),
                  Text(account, style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300, color: Colors.grey)),
                ],
              ),
            ],
          ),
          // body
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(80.0, 20.0, 15.0, 10.0),
            child: Text(
              body,
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.black, height: 1.5),
            ),
          ),
          hasLink ?
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(80.0, 10.0, 15.0, 10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              border: Border.all(color: Color(0xFFBDBDBD), width: 0.2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "One morning, when Gregor Samsa woke from troubled dreams",
                  style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500, color: Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5.0),
                Text(
                  "https://testlink.com/news/nkdlajde",
                  style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500, color: Colors.blueGrey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
              :
          SizedBox.shrink(),
          const SizedBox(height: 10.0),
          Row(

            children: [
              Container(
                width: 45,
                height: 25,
                margin: EdgeInsets.only(left: 80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.grey[100],
                ),
                child: Center(
                  child: Text('🔥3', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600)),
                ),
              ),
              Container(
                width: 45,
                height: 25,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.grey[100],
                ),
                child: Center(
                  child: Text('👍2', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Container(height: 0.2, color: Color(0xFFBDBDBD)),
        ],
      ),
    );
  }

  Widget _makeSingleOfficialNews(String datetime, String body) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // icon, name and datetime
          Row(
            children: [
              Container(
                width: 45.0,
                height: 45.0,
                margin: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Icon(Icons.check, color: Colors.white),
                ),
              ),
              const SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('official', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black)),
                  const SizedBox(height: 5.0),
                  Text(datetime, style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300, color: Color(0xFFBDBDBD))),
                ],
              ),
            ],
          ),
          // body
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(80.0, 20.0, 15.0, 10.0),
            child: Text(
              body,
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.black, height: 1.5),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _makeSingleNews(true),
                  _makeSingleNews(false),
                  _makeSingleNews(false),
                  _makeSingleNews(false),
                  _makeSingleNews(false),
                ],
              ),
            ),
          ),
          Container(height: 0.2, color: Color(0xFFBDBDBD)),
        ],
      ),
    );
  }

  Widget _makeSingleNews(bool isFirst) {
    return Container(
      width: 200,
      height: 120,
      margin: EdgeInsets.only(right: 10.0, left: isFirst ? 80.0 : 0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(color: Color(0xFFBDBDBD), width: 0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 65.0,
                height: 65.0,
                margin: EdgeInsets.only(right: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    "assets/images/sorasak-_UIN-pFfJ7c-unsplash.jpg",
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Expanded(
                child: Text('Starbucks opens up its web3 loyalty program and NFT community to first beta testers', overflow: TextOverflow.ellipsis, maxLines: 2),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: Text('45min Nikkei xTECH', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.blueGrey), overflow: TextOverflow.ellipsis, maxLines: 1),
          ),
        ],
      ),
    );
  }
}
