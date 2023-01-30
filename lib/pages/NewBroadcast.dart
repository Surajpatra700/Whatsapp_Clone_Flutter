// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NewBroadcast extends StatelessWidget {
  const NewBroadcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text("New Broadcast",style: TextStyle(fontWeight: FontWeight.w400),),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60,),
              Center(child: Text("Scan here",style: TextStyle(fontSize: 18,color: Colors.black54,fontWeight: FontWeight.w500),)),
              SizedBox(height: 16,),
              Container(
                height: 240,
                width: 240,
                //color: Colors.black,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/qrcode.png")),
                ),
              ),
              SizedBox(height: 20,),
              Text("Scan and see",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),),
              Text("the Preview",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),),
              SizedBox(height: 60),
              Text("from",style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.w500),),
              Text("Meta",style: TextStyle(fontSize: 16.5,color: Colors.black,fontWeight: FontWeight.w700),),
            ],
          ),
        ),
      ),
    );
  }
}