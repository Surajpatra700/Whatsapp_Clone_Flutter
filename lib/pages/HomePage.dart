// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/callsWidget.dart';
import 'package:whatsapp/widgets/chatsWidget.dart';
import 'package:whatsapp/widgets/statusWidget.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(68),
            child: AppBar(
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "WhatsApp",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w700),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(top: 12, right: 15),
                  child: Icon(Icons.search, size: 27),
                ),
                PopupMenuButton(
                  onSelected: (selected) {
                    // if someone clicks on value 5 means click on settings
                    if (selected == 6) {
                      Navigator.pushNamed(context, "settingsPage");
                    } else if (selected == 3) {
                      Navigator.pushNamed(context, "linkedDevicePage");
                    } else if (selected == 2) {
                      Navigator.pushNamed(context, "newBroadcast");
                    }
                  },
                  elevation: 10,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  iconSize: 27,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        value: 1,
                        child: Text(
                          "New Group",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        )),
                    PopupMenuItem(
                        value: 2,
                        child: Text(
                          "New Broadcast",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        )),
                    PopupMenuItem(
                        value: 3,
                        child: Text(
                          "Linked devies",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        )),
                    PopupMenuItem(
                        value: 4,
                        child: Text(
                          "Starred messages",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        )),
                    PopupMenuItem(
                        value: 5,
                        child: Text(
                          "Payments",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        )),
                    PopupMenuItem(
                        value: 6,
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        )),
                  ],
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                color: Color(0xFF075E55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    // tab 1
                    Container(
                      width: 20,
                      child: Tab(
                        icon: Icon(Icons.camera_alt),
                      ),
                    ),
                    
                    // tab 2
                    Container(
                      width: 75,
                      child: Tab(
                        child: Row(
                          children: [
                            Text(
                              "Chats",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("10",
                                    style: TextStyle(
                                        color: Color(0xFF075E55),
                                        fontSize: 12)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // tab 3
                    Container(
                      width: 75,
                      child: Tab(
                        child: Text(
                          "Status",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),

                    // tab 4
                    Container(
                      width: 75,
                      child: Tab(
                        child: Text(
                          "Calls",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              Flexible(
                flex: 1,
                child: TabBarView(children: [
                  // tab 1 Camera
                  Container(color: Colors.black),
                  // tab2 ChatsWidget
                  ChatsWidget(),
                  // tab3 StatusWidget
                  StatusWidget(),
                  // tab4
                  CallsWidget(),
                ]),
              ),
            ],
          ),
        ));
  }
}
