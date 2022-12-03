import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


void main() {
   
  runApp(YoutubePlayerDemoApp());
}


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
}

