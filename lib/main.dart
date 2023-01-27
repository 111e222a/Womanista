import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:womanista/Doctor_Provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'DoctorList.dart';
import 'LawsList.dart';


void main() {
   
  runApp(LawsList());
}
 
//DoctorProfile
/* class DoctorAppointment extends StatelessWidget {
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
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                       //mainAxisAlignment:MainAxisAlignment.center,
           
                          children: [
                            
                            Icon(Icons.star,color:Colors.amber),
                            Icon(Icons.star,color:Colors.amber),
                            Icon(Icons.star,color:Colors.amber),
                            Icon(Icons.star,color:Colors.amber),
                            Icon(Icons.star,color:Colors.amber),
                             
                            
                         ],
                        
                    ),
                     
                     ),
                      SizedBox(height:10),
           
                      Padding(padding: const EdgeInsets.symmetric(horizontal:8.0),
                      
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sapien turpis. \nDuis convallis pulvinar porta. Donec ex lorem, dignissim vel risus in, condimentum placerat metus. Mauris dictum in ante sed molestie. Pellentesque pretium eget ante vel consectetur. Donec vel mollis enim, vitae ultrices odio. Proin eu lacinia massa, a cursus dolor.  ",
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

//DoctorList

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
                        
                          subtitle: Row(
                            children: [
                              Text(doctorData.doctor[index].Desc),
                              SizedBox(width: 20,),
                              Icon(Icons.star),
                              Text("rating"),
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

class YoutubePlay extends StatefulWidget {
  const YoutubePlay({Key? key, this.id}) : super(key: key);
  final id;
  @override
  State<YoutubePlay> createState() => _YoutubePlayState();
}

class _YoutubePlayState extends State<YoutubePlay> {
  @override
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
           backgroundColor:Colors.blueGrey[900],
           title:Text('Self Defence Tutorials',style:TextStyle(color:Colors.white)),
           centerTitle: true,
           elevation:0,
           ),
           
           body:Text("${widget.id}"),
           );
  }
}  */
/* 
class YoutubePlayerDemoApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}



class Youtube{
String LinkId="";
String Desc="";



Youtube(String LinkId,String Desc)
{
  this.LinkId=LinkId;
  this.Desc=Desc;
 
  
}
}

List<Youtube> ytube=[Youtube("UV78YzM-gGQ","3 Simple Self Defence moves you must know"),
Youtube("UV78YzM-gGQ","3 Simple Self Defence moves you must know"),
Youtube("UV78YzM-gGQ","3 Simple Self Defence moves you must know"),
Youtube("UV78YzM-gGQ","3 Simple Self Defence moves you must know"),
Youtube("UV78YzM-gGQ","3 Simple Self Defence moves you must know"),


];


class _MyHomePageState extends State<MyHomePage> {
  int id=0;
  void UpdateId(int newId)
  {
setState((){id=newId;
 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => YoutubePlay(id: id,)),
                    );
                    });
  }
  @override
   Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: Colors.white,
           appBar: AppBar(
           automaticallyImplyLeading: false,
           backgroundColor:Colors.blueGrey[900],
           title:Text('Self Defence Tutorials',style:TextStyle(color:Colors.white)),
           centerTitle: true,
           elevation:0,
           ),
           body:Padding(
             padding: const EdgeInsets.symmetric(vertical:40),
             child: SizedBox(
               child: ListView.separated(
      separatorBuilder: (BuildContext context, int index) => SizedBox(height:10),
        itemCount: ytube.length,
        itemBuilder: (context, index) {
          return SizedBox(height:90,
            child: Card(
            //shape:RoundedRectangleBorder(side:BorderSide(color:Color.fromARGB(255, 230, 226, 226)),borderRadius:BorderRadius.circular(10)),
                    child: Center(
                      child: ListTile(
                        title:Text("Self Defence Tutorial # ${index+1}\n"),
                        
                          subtitle: Text(ytube[index].Desc),
                          
                          leading:
                              Image.network("https://img.youtube.com/vi/${ytube[index].LinkId}/0.jpg", fit: BoxFit.fill,),
                          trailing: IconButton(icon: Icon(color:Color.fromARGB(255, 58, 73, 80),Icons.play_circle_rounded), onPressed:(){UpdateId(index);} ,)),
                    )),
          );
        }),
             ),
           ));
  }
}

class YoutubePlay extends StatefulWidget {
  const YoutubePlay({Key? key, this.id}) : super(key: key);
  final id;
  @override
  State<YoutubePlay> createState() => _YoutubePlayState();
}

class _YoutubePlayState extends State<YoutubePlay> {
  @override
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
           backgroundColor:Colors.blueGrey[900],
           title:Text('Self Defence Tutorials',style:TextStyle(color:Colors.white)),
           centerTitle: true,
           elevation:0,
           ),
           
           body:Text("${widget.id}"),
           );
  }
} */

