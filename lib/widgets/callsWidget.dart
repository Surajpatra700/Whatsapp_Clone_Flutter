// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CallsWidget extends StatefulWidget {
  @override
  State<CallsWidget> createState() => _CallsWidgetState();
}

class _CallsWidgetState extends State<CallsWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Icon(Icons.link, color: Colors.green, size: 34),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create Call Link",
                          style: TextStyle(
                              fontSize: 16.5, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Share a link for your WhatsApp call",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Recent",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
            for (int i = 1; i < 6;i++)
              Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/images/profile${(2*i)+1}.jpg",
                            height: 53, width: 53, fit: BoxFit.cover),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Celebrity ${(2*i)+1}",
                            style: TextStyle(
                                fontSize: 16.5, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Container(
                                child: Icon(Icons.call_received,size: 15,color: Colors.green,),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Text(
                            "${(2*i)+5}/07/22, ${i*2}:18 PM",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                            ],
                          )
                          
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child:
                          Icon(Icons.call, size: 24, color: Colors.green)),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
