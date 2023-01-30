// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leadingWidth: 40,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Settings"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Column(
            children: [
              Card(
                elevation: 0.5,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/images/photo.jpg",width: 63,height: 63,fit: BoxFit.cover),
                      ),
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Suraj Patra",style: TextStyle(fontSize: 17.5,fontWeight: FontWeight.w400,color: Colors.black),),
                          SizedBox(height: 6,),
                          Text("Hey there, i am using WhatsApp",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black54),),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.qr_code,size: 25,color: Color(0xFF075E55)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Container(
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.key,size: 24,color: Colors.black45),
                    ),
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Account",style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w400,color: Colors.black)),
                        SizedBox(height: 6),
                        Text("Security notifications, change",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                        Text("number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              Container(
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.face_retouching_natural,size: 24,color: Colors.black45),
                    ),
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Avatar",style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w400,color: Colors.black)),
                        SizedBox(height: 6),
                        Text("Create,edit,profile photo",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                        //Text("number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              Container(
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.lock,size: 24,color: Colors.black45),
                    ),
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Privacy",style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w400,color: Colors.black)),
                        SizedBox(height: 6),
                        Text("Block contacts, disappearing",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                        Text("messages",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              Container(
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.chat,size: 24,color: Colors.black45),
                    ),
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Chats",style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w400,color: Colors.black)),
                        SizedBox(height: 6),
                        Text("Theme, wallpaper, chat history",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                        //Text("number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              Container(
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.notifications,size: 24,color: Colors.black45),
                    ),
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Notifications",style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w400,color: Colors.black)),
                        SizedBox(height: 6),
                        Text("Messages, group & call tones",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                        //Text("number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              Container(
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.circle_outlined,size: 24,color: Colors.black45),
                    ),
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Storage and Data",style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w400,color: Colors.black)),
                        SizedBox(height: 6),
                        Text("Network usage, auto-download",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                        //Text("number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              Container(
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.language_outlined,size: 24,color: Colors.black45),
                    ),
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("App Language",style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w400,color: Colors.black)),
                        SizedBox(height: 6),
                        Text("English (phone's language)",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                        //Text("number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              Container(
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.help,size: 24,color: Colors.black45),
                    ),
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Help",style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w400,color: Colors.black)),
                        SizedBox(height: 6),
                        Text("Help center, contact us,privacy policy",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                        //Text("number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              Container(
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.group,size: 24,color: Colors.black45),
                    ),
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Invite a friend",style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w400,color: Colors.black)),
                        //SizedBox(height: 6),
                        //Text("Theme, wallpaper, chat history",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                        //Text("number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),
            ],
          ),
        ),

      ),
    );
  }
}