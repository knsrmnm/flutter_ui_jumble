import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryScreen extends StatefulWidget {
  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  final _storyController = StoryController();

  @override
  void dispose() {
    _storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        storyItems: [
          StoryItem.text(
            title: "Stories just like Instagram.",
            textStyle: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
            backgroundColor: Colors.pink,
            // duration: Duration(seconds: 3),
          ),
          StoryItem.text(
            title: "Nice!\n\nTap to continue.",
            backgroundColor: Colors.red,
            textStyle: TextStyle(
              fontFamily: 'Dancing',
              fontSize: 40,
            ),
          ),
          StoryItem.pageImage(
              url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
              caption: "Working with gifs",
              controller: _storyController
          ),
        ],
        progressPosition: ProgressPosition.top,
        repeat: false,
        controller: _storyController,
      ),
    );
  }
}