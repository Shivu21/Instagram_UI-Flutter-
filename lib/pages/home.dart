import 'package:flutter/material.dart';
import 'package:instagram_ui/util/bubble_stories.dart';
import 'package:instagram_ui/util/chat_message.dart';
import 'package:instagram_ui/util/chat_search.dart';

class UserHome extends StatelessWidget {
final List people = ['shivam', 'pawan','harsh','avinav', 'vivek', 'saurav', 'sachin', 'deepak', 'lokant', 'kushagra'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.image_rounded), 
          Center(
            child: Text (
              'Puzzels',
            style: TextStyle(color: Colors.black),
            ),
          ),
          Icon(Icons.cached_outlined), 
        ],
        )
      ),
      body:  Column(
        children: [
          //Stories
            Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: people.length,    
                  itemBuilder: (context, index){
                    return BubbleStories(text: people[index]);
                  }),
              ),
          //Post
           const ChatSearch(),
           //chatSearch
           const ChatMessage(),
           
        ],
      )
    );
  }
}