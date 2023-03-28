import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:womanista/Doctor_Provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'DoctorList.dart';
import 'LawsList.dart';
import 'DoctorRequests.dart';
import 'DoctorModuleApplicationForm.dart';
import 'package:womanista/chat_provider.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:const FirebaseOptions(apiKey: "AIzaSyBly_JlEz_b7k5U7rTI4UoR-2VWks2Hwy4",
  authDomain: "womanista-27f5f.firebaseapp.com",
  projectId: "womanista-27f5f",
  storageBucket: "womanista-27f5f.appspot.com",
  messagingSenderId: "357880895236",
  appId: "1:357880895236:web:a7d998e6e4f2ff7de86251",
  measurementId: "G-F4XETK7EWL"));
   
  runApp(
    MultiProvider(
      providers: [
       
        ChangeNotifierProvider(create: (_) => ChatProvider()),
     
      ],
      child: Menu(),
    ),
  );
    
}
class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    
    home:MyMenu());
  }
}
class MyMenu extends StatefulWidget {
  const MyMenu({Key? key}) : super(key: key);

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: Colors.white,
           appBar: AppBar(
           automaticallyImplyLeading: false,
           backgroundColor:Colors.redAccent,
           title:Text('Menu',style:TextStyle(color:Colors.white)),
           centerTitle: true,
           elevation:0,
           ),
           body:Center(
             child: Column(mainAxisAlignment:MainAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(),
                   child:RaisedButton(color:Colors.redAccent,child:Text("Doctor Appointment Module",style:TextStyle(color:Colors.white)),onPressed:()=> Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DoctorListApp()),
                          ),
                          ),
  ), SizedBox(height:20),
  Padding(
               padding: const EdgeInsets.symmetric(),
               child:RaisedButton(color:Colors.redAccent,child:Text("Women Protection Laws Module",style:TextStyle(color:Colors.white)),onPressed:()=> Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LawsListApp()),
                      ),
                      ),
  ) ,
  SizedBox(height:20),
  Padding(
               padding: const EdgeInsets.symmetric(),
               child:RaisedButton(color:Colors.redAccent,child:Text("DoctorApplicationForm",style:TextStyle(color:Colors.white)),onPressed:()=> Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DoctorFormApp()),
                      ),
                      ),
  ) ,
  SizedBox(height:20),
  Padding(
               padding: const EdgeInsets.symmetric(),
               child:RaisedButton(color:Colors.redAccent,child:Text("DoctorRequestPage",style:TextStyle(color:Colors.white)),onPressed:()=> Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DoctorRequestListApp()),
                      ),
                      ),
  ) ,
               ],
             ),
           ) ,

   

           );
  }
}

