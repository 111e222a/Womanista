import 'dart:developer';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:womanista/Laws_Provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
LawsData lawsData=LawsData();
class LawsInfo extends StatelessWidget {
  const LawsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: LawsDesc(),
    );
  }
}
class LawsDesc extends StatefulWidget {
 
const LawsDesc({Key? key, this.id}) : super(key: key);
  final id;
  @override
  
 
  State<LawsDesc> createState() => _LawsDescState();
}

class _LawsDescState extends State<LawsDesc> {
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
           title:Text('Laws Description',style:TextStyle(color:Color.fromARGB(255, 255, 255, 255))),
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
                        CircleAvatar(radius:100,backgroundColor:Colors.redAccent,backgroundImage:NetworkImage("https://images.unsplash.com/photo-1593115057322-e94b77572f20?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y291cnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")),
                      ],
                    ),
                    SizedBox(height:10),
                    
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      child: Text(lawsData.laws[widget.id].heading,style:TextStyle(fontWeight:FontWeight.bold,fontSize:25,color:Colors.redAccent)),
                    ),
                    SizedBox(height:6),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      
                      child: Text(lawsData.laws[widget.id].subHeading,style:TextStyle(fontWeight:FontWeight.normal,fontSize:17,color:Colors.redAccent)),
                    ),
                    SizedBox(height:16),
           
                      Padding(padding: const EdgeInsets.symmetric(horizontal:8.0),
                      
                      child: Text(lawsData.laws[widget.id].desc,
                      style:TextStyle(fontWeight:FontWeight.normal,fontSize:17,color:Color.fromARGB(255, 44, 44, 44))),
                    ), 
                      SizedBox(height:20),
                     // Padding(padding: const EdgeInsets.symmetric(horizontal:8.0),
                
                ],
                
              ),
                     ),
           ),
          
           );
           
  }
}