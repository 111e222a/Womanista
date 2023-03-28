import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:womanista/Doctor_Provider.dart';
import 'package:womanista/DoctorList.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
DoctorData doctorData=DoctorData();

final collection = FirebaseFirestore.instance.collection("Doctors");

class DoctorAppointment extends StatelessWidget {
  const DoctorAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: DoctorProfile(),
    );
  }
}
class DoctorProfile extends StatefulWidget {
 
  const DoctorProfile({Key? key, this.id}) : super(key: key);
  final id;

  @override
  
 
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  void initState() {
    widget.id;
   

    
  
    loadData();
    super.initState();
  }
  loadData()
  {

    
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
           backgroundColor: Colors.white,
           appBar: AppBar(
           automaticallyImplyLeading: false,
           backgroundColor:Colors.redAccent,
           title:Text('DoctorAppointment',style:TextStyle(color:Color.fromARGB(255, 255, 255, 255))),
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
                        CircleAvatar(radius:100,backgroundColor:Colors.redAccent,backgroundImage:NetworkImage("${Img[widget.id]}")),
                      ],
                    ),
                    SizedBox(height:10),
                    
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      child: Text(Name[widget.id],style:TextStyle(fontWeight:FontWeight.bold,fontSize:25,color:Colors.redAccent)),
                    ),
                    SizedBox(height:6),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      
                      child: Text(Desc[widget.id],style:TextStyle(fontWeight:FontWeight.normal,fontSize:17,color:Colors.redAccent)),
                    ),
                    SizedBox(height:16),
           
                     Padding(
                       padding: const EdgeInsets.all(6.0),
                       child: Container( 
                         child: RatingBar.builder(itemSize:20,
   initialRating: Rating[widget.id],
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
   itemBuilder: (context, _) => Icon(
     Icons.star,
     color: Colors.amber,
   ),
   onRatingUpdate: (rating) {

     
   },

                          
                    ),
                       ),
                     
                     ),
                      SizedBox(height:10),
           
                      Padding(padding: const EdgeInsets.symmetric(horizontal:8.0),
                      
                      child: Text(ProfileDesc[widget.id],
                      style:TextStyle(fontWeight:FontWeight.normal,fontSize:17,color:Color.fromARGB(255, 44, 44, 44))),
                    ), 
                      SizedBox(height:20),
                      Padding(padding: const EdgeInsets.symmetric(horizontal:8.0),
                
                    child:RaisedButton(color:Colors.redAccent,child:Text("Book an Appointment",style:TextStyle(color:Colors.white)),onPressed:()=> {})  
                )],
                
              ),
                     ),
           ),
          
           );
           
  }
}