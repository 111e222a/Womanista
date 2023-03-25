import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:womanista/DoctorRequestProvider.dart';
import 'DoctorProfile.dart';
import 'chat_module.dart';

//import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class DoctorRequestList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: DoctorRequestListApp(),
    );
  }
}
class DoctorRequestListApp extends StatefulWidget {
  const DoctorRequestListApp({Key? key}) : super(key: key);

  @override
  State<DoctorRequestListApp> createState() => _DoctorRequestListAppState();
}





/* class Doctor{
String Name="";
String Desc="";



Doctor(String Name,String Desc)
{
  this.Name=Name;
  this.Desc=Desc;
 
  
}
} */
DoctorRequestData doctorData= DoctorRequestData();


//List<List<Icon>>iconlist=[[Icons.star,Icons.star,Icons.star]];

class _DoctorRequestListAppState extends State<DoctorRequestListApp> {
  int id=0;
  void UpdateId(int newId)
  {
setState((){id=newId;
 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatScreen(id: id,)),
                    );
                    });
  }
  @override
   Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: Colors.white,
           appBar: AppBar(
           automaticallyImplyLeading: false,
           backgroundColor:Colors.redAccent,
           title:Text('Customer Requests',style:TextStyle(color:Colors.white)),
           centerTitle: true,
           elevation:0,
           ),
           body:Padding(
             padding: const EdgeInsets.symmetric(vertical:40),
             child: SizedBox(
               child: ListView.separated(
      separatorBuilder: (BuildContext context, int index) => SizedBox(height:10),
        itemCount: doctorData.doctor.length,
        itemBuilder: (context, index) {
          return SizedBox(height:90,
            child: Card(
            //shape:RoundedRectangleBorder(side:BorderSide(color:Color.fromARGB(255, 230, 226, 226)),borderRadius:BorderRadius.circular(10)),
                    child: Center(
                      child: ListTile(
                        title:Text(doctorData.doctor[index].userName +""),
                        
                          subtitle:  Row(
                            children: [
                              Text(doctorData.doctor[index].userQuery),
                              SizedBox(width: 20,),
                             
                            ],
                          ),
                        
                          leading:
                       Image.network("${doctorData.doctor[index].img}",width:59,height:59,fit:BoxFit.cover),
                        trailing: Column(
                          children: [
                            
                          SizedBox(height:20) ,
                          RaisedButton(color:Colors.redAccent,child:Text("Chat",style:TextStyle(color:Colors.white)),onPressed:()=> UpdateId(index))  
                            
                           ],
                        )),
                    )),
          );
        }),
             ),
           ));
  }
}