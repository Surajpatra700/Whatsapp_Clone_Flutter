// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp/pages/ChatPage.dart';
import 'package:whatsapp/pages/HomePage.dart';
import 'package:whatsapp/pages/LinkedDevice.dart';
import 'package:whatsapp/pages/NewBroadcast.dart';
import 'package:whatsapp/pages/SettingsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        //primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xFF075E55),
        ),
        //To transparent bottom sheet on chat page you will see.
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/":(context) => HomePage(),  
        "settingsPage":(context) => SettingsPage(),
        "linkedDevicePage":(context) => LinkedDevice(),
        "chatPage":(context) => ChatPage(), 
        "newBroadcast":(context) => NewBroadcast(),     
      },
      debugShowCheckedModeBanner: false,
    );
  }
}