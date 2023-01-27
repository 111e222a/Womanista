import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CabBooking extends StatelessWidget {
  const CabBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: CabInfo(),);
  }
}
class CabInfo extends StatefulWidget {
  const CabInfo({Key? key}) : super(key: key);

  @override
  State<CabInfo> createState() => _CabInfoState();
}

class _CabInfoState extends State<CabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: Colors.white,
           appBar: AppBar(
           automaticallyImplyLeading: false,
           backgroundColor:Colors.redAccent,
           title:Text('CabInfo',style:TextStyle(color:Color.fromARGB(255, 255, 255, 255))),
           centerTitle: true,
           elevation:0,
           ),
           body:SingleChildScrollView(
             child: Padding(padding: const EdgeInsets.symmetric(vertical:40),
              child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        CircleAvatar(radius:100,backgroundColor:Colors.white,backgroundImage:NetworkImage("https://png.pngtree.com/png-vector/20191213/ourmid/pngtree-blue-car-illustration-vector-on-white-background-png-image_2070188.jpg")),
                      ],
                    ),
                    SizedBox(height:25),
                    Center(child: Text("Cab Details",style:TextStyle(fontWeight:FontWeight.bold,fontSize:20,color:Colors.redAccent))), 
                    
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Table(
    
border: TableBorder.all(color: Colors.redAccent, width: 2.5),
  children: const [
    TableRow(
    children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text("Seats", style: TextStyle(fontSize: 15.0),)),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text("5", style: TextStyle(fontSize: 15.0),)),
      ),
      
       
    ]),
    TableRow(
    children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text("Seats", style: TextStyle(fontSize: 15.0),)),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text("5", style: TextStyle(fontSize: 15.0),)),
      ),
      
       
    ]),
    TableRow(
    children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text("Minimum Fare", style: TextStyle(fontSize: 15.0),)),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text("50 Dollars", style: TextStyle(fontSize: 15.0),)),
      ),
      
       
    ]),
    TableRow(
    children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text("Per Mile", style: TextStyle(fontSize: 15.0),)),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text("1 Dollars", style: TextStyle(fontSize: 15.0),)),
      ),
      
       
    ]),
    TableRow(
    children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text("Per Minute", style: TextStyle(fontSize: 15.0),)),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text("0.30 Dollars", style: TextStyle(fontSize: 15.0),)),
      ),
      
       
    ]),
    
  ]),
                    ),
  SizedBox(height:20),
  Center(child: RaisedButton(color:Colors.redAccent,child:Text("Proceed",style:TextStyle(color:Colors.white)),onPressed:()=> {}))  

                  ]
                    
    ),),),);
  }
}