// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(right: 90),
          child: Container(child: ClipPath(
              clipper: UpperNipMessageClipperTwo(MessageType.receive),
              child: Container(
                padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text("Hi, Celebrity, How are you?",style: TextStyle(fontSize: 15),),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(padding: EdgeInsets.only(right: 90),
          child: Container(child: ClipPath(
              clipper: UpperNipMessageClipperTwo(MessageType.receive),
              child: Container(
                padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text("What's your fan base?",style: TextStyle(fontSize: 15.5),),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(padding: EdgeInsets.only(left: 145),
          child: Container(child: ClipPath(
              clipper: UpperNipMessageClipperTwo(MessageType.send),
              child: Container(
                padding: EdgeInsets.only(top: 10,bottom: 10,left: 15,right: 25),
                decoration: BoxDecoration(
                  color: Color(0xFFE4FDCA),
                ),
                child: Text("I'm nice, how are you ?",style: TextStyle(fontSize: 15.5,color: Colors.black),),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(padding: EdgeInsets.only(right: 140),
          child: Container(child: ClipPath(
              clipper: UpperNipMessageClipperTwo(MessageType.receive),
              child: Container(
                padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text("I'm nice",style: TextStyle(fontSize: 15.5,color: Colors.black),),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(padding: EdgeInsets.only(right: 140),
          child: Container(child: ClipPath(
              clipper: UpperNipMessageClipperTwo(MessageType.receive),
              child: Container(
                padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text("I am planning a vacation trip to Finland this Sunday",style: TextStyle(fontSize: 15.5,color: Colors.black),),
              ),
            ),
          ),
        ),
      ],
    );
  }
}