import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:womanista/Laws_Provider.dart';
import 'LawDescription.dart';

//import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class LawsList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: LawsListApp(),
    );
  }
}
class LawsListApp extends StatefulWidget {
  const LawsListApp({Key? key}) : super(key: key);

  @override
  State<LawsListApp> createState() => _LawsListAppState();
}





LawsData lawsData= LawsData();


//List<List<Icon>>iconlist=[[Icons.star,Icons.star,Icons.star]];

class _LawsListAppState extends State<LawsListApp> {
  int id=0;
  void UpdateId(int newId)
  {
setState((){id=newId;
 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LawsDesc(id: id,)),
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
           title:Text('Women Protection Laws',style:TextStyle(color:Colors.white)),
           centerTitle: true,
           elevation:0,
           ),
           body:Padding(
             padding: const EdgeInsets.symmetric(vertical:40),
             child: SizedBox(
               child: ListView.separated(
      separatorBuilder: (BuildContext context, int index) => SizedBox(height:10),
        itemCount: lawsData.laws.length,
        itemBuilder: (context, index) {
          return SizedBox(height:90,
            child: Card(
            //shape:RoundedRectangleBorder(side:BorderSide(color:Color.fromARGB(255, 230, 226, 226)),borderRadius:BorderRadius.circular(10)),
                    child: Center(
                      child: ListTile(
                        title:Text(lawsData.laws[index].heading +""),
                        
                          subtitle:  Row(
                            children: [
                              Text(lawsData.laws[index].subHeading),
                              SizedBox(width: 20,),
                             
                            ],
                          ),
                        
                          leading:
                       Image.network("https://images.unsplash.com/photo-1593115057322-e94b77572f20?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y291cnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",width:57,height:57,fit:BoxFit.cover),
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