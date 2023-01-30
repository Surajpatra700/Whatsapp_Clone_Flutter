// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChatButtomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0,bottom: 10.0),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(8.0),
            //color: Colors.white,
            child: Row(
              children: [
                Container(
                  child: ClipRRect(
                    child: Icon(Icons.emoji_emotions,color: Colors.black54,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text("Message",style: TextStyle(color: Colors.black45,fontSize: 19),),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                Container(
                  child: ClipRRect(
                    child: Icon(Icons.attachment,color: Colors.black54,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                ),
                Container(
                  child: ClipRRect(
                    child: Icon(Icons.currency_rupee_rounded,color: Colors.black54,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                ),
                Container(
                  child: ClipRRect(
                    child: Icon(Icons.camera_alt_outlined,color: Colors.black54,),
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 8)),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Color(0xFF075E55),
              borderRadius: BorderRadius.circular(50)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Icon(Icons.mic,color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}