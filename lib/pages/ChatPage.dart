// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/ChatButtomBar.dart';
import 'package:whatsapp/widgets/ChatSample.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(63),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(top: 10,left: 5),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,size: 25),
            ),
          ),
          leadingWidth: 20,
          title: Padding(padding: EdgeInsets.only(top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("assets/images/profile3.jpg",height: 45,width: 45,fit: BoxFit.cover),
                ),
                Padding(padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Celebrity",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                      SizedBox(height: 4),
                      Text("online",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w100)),
                    ],
                  ),
                ),
              ],
            ),  
          ),
          actions: [
            Padding(padding: EdgeInsets.only(top: 10,right: 25),
              child: Icon(CupertinoIcons.video_camera_solid, size: 27),
            ),
            Padding(padding: EdgeInsets.only(top: 10,right: 20),
              child: Icon(Icons.call, size: 20),
            ),
            Padding(padding: EdgeInsets.only(top: 10,right: 10),
              child: Icon(Icons.more_vert, size: 22),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/wallpaper.png"),fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            //height: 1,
            //color: Colors.yellow,
            padding: EdgeInsets.only(top: 10,left: 8,right: 8,bottom: 80),
            child: Column(
              children: [
                // Center(
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 45),
                //     child: Container(
                //       padding: EdgeInsets.only(left: 5),
                //       // width: 600,
                //       margin: EdgeInsets.only(bottom: 500,right: 50),
                //       // padding: EdgeInsets.all(8),
                //       width: 300,
                //       height: 70,
                //       decoration: BoxDecoration(
                //         color: Color(0xFFFFF3C2),
                //         borderRadius: BorderRadius.circular(5),
                //         boxShadow: [
                //           BoxShadow(color: Colors.grey.withOpacity(0.5),
                //           blurRadius: 8,
                //           ),
                //         ],
                //       ),
                      
                //     ),
                //   ),
                // ),
                //Center(child: Text("Messages and calls are end-to-end",style: TextStyle(fontSize: 10,color: Colors.black87),textAlign: TextAlign.center,)),
                //Center(child: Text("Messages and calls are end-to-end",style: TextStyle(fontSize: 10,color: Colors.black87),textAlign: TextAlign.center,)),
                //Center(child: Text("read or listen. Tap to learn more",style: TextStyle(fontSize: 10,color: Colors.black87),textAlign: TextAlign.center,)),
                Container(height: 70,width: 260,color: Color(0xFFFFF3C2), child: Center(child: Text("Messages and calls are end-to-end encrypted, No one outside of this chat can,t read or listen. Tap to learn more",textAlign: TextAlign.center,style: TextStyle(fontSize: 14),))),
                SizedBox(height: 20,),              
                ChatSample(),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color.fromARGB(255, 128, 189, 238)),
                  height: 25,width: 90,child: Center(child: Text("Today",style: TextStyle(fontSize: 16,color: Colors.white),))),
                SizedBox(height: 20,),
                ChatSample(),
                SizedBox(height: 10),
                ChatSample(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: ChatButtomBar(),
    );
  }
}
