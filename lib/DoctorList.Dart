import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:womanista/Doctor_Provider.dart';
import 'DoctorProfile.dart';

//import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class DoctorList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: DoctorListApp(),
    );
  }
}
class DoctorListApp extends StatefulWidget {
  const DoctorListApp({Key? key}) : super(key: key);

  @override
  State<DoctorListApp> createState() => _DoctorListAppState();
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
DoctorData doctorData= DoctorData();


//List<List<Icon>>iconlist=[[Icons.star,Icons.star,Icons.star]];

class _DoctorListAppState extends State<DoctorListApp> {
  int id=0;
  void UpdateId(int newId)
  {
setState((){id=newId;
 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DoctorProfile(id: id,)),
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
           title:Text('Gynecologists',style:TextStyle(color:Colors.white)),
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
                        title:Text(doctorData.doctor[index].Name +""),
                        
                          subtitle:  Row(
                            children: [
                              Text(doctorData.doctor[index].Desc),
                              SizedBox(width: 20,),
                              Icon(Icons.star,color:Colors.amber),
                              Text("${doctorData.doctor[index].Rating}"),
                            ],
                          ),
                        
                          leading:
                       Image.network("https://png.pngtree.com/png-vector/20220901/ourmid/pngtree-female-doctor-avatar-icon-illustration-png-image_6134280.png",width:57,height:57,fit:BoxFit.cover),
                        trailing: Column(
                          children: [
                            
                          SizedBox(height:20) ,
                          RaisedButton(color:Colors.redAccent,child:Text("View Details",style:TextStyle(color:Colors.white)),onPressed:()=> UpdateId(index))  
                            
                           ],
                        )),
                    )),
          );
        }),
             ),
           ));
  }
}