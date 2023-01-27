import 'dart:developer';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:womanista/Doctor_Provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
DoctorData doctorData=DoctorData();
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
    super.initState();
    
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
                        CircleAvatar(radius:100,backgroundColor:Colors.redAccent,backgroundImage:NetworkImage("https://png.pngtree.com/png-vector/20220901/ourmid/pngtree-female-doctor-avatar-icon-illustration-png-image_6134280.png")),
                      ],
                    ),
                    SizedBox(height:10),
                    
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      child: Text(doctorData.doctor[widget.id].Name,style:TextStyle(fontWeight:FontWeight.bold,fontSize:25,color:Colors.redAccent)),
                    ),
                    SizedBox(height:6),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      
                      child: Text("Gynecologist",style:TextStyle(fontWeight:FontWeight.normal,fontSize:17,color:Colors.redAccent)),
                    ),
                    SizedBox(height:16),
           
                     Padding(
                       padding: const EdgeInsets.all(6.0),
                       child: Container( 
                         child: RatingBar.builder(itemSize:20,
   initialRating: doctorData.doctor[widget.id].Rating,
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
                      
                      child: Text(doctorData.doctor[widget.id].profileDesc,
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