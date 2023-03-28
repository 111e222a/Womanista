import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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



var length=0;
var Name=[];
var ProfileDesc=[];
var Img=[];
var Rating=[];
var Desc=[];

var data;
DoctorData doctorData= DoctorData();
final collection = FirebaseFirestore.instance.collection("Doctors");


//List<List<Icon>>iconlist=[[Icons.star,Icons.star,Icons.star]];

class _DoctorListAppState extends State<DoctorListApp> {
  int id=0;
   
   
  
  void UpdateId(int newId)
  {
setState((){id=newId;
 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DoctorProfile(id: id)),
                    );
                    });
  }
  @override
  ///final collection = FirebaseFirestore.instance.collection("Doctors");

  void initState()
  {
    loadData();
    super.initState();
  }
  loadData()async
  {
    
 
    var idx=1;
    
    doctorData.doctor.forEach((doc)
    {
    print(doc.Name);
     
     final store=  collection.doc('$idx').set({"Name":doc.Name,"Desc":doc.Desc,"Rating":doc.Rating,"ProfileDesc":doc.ProfileDesc,"Img":doc.Img});
     idx++;
    });
     
    data=await collection.get();
    //data=data.docs[i].data()["Name"];
    //print(data);
    collection.get().then((value){
      value.docs.forEach((element){
        setState(()
        {
        Desc.add(element.data()["Desc"]);
        Name.add(element.data()["Name"]);
        ProfileDesc.add(element.data()["ProfileDesc"]);
        Img.add(element.data()["Img"]);
        
        Rating.add(element.data()["Rating"]);
        length++;});});
    });
 
   
   //CollectionReference _collectionRef =
   
   // FirebaseFirestore.instance.collection('Doctors');

  
    // Get docs from collection reference
    //QuerySnapshot querySnapshot = await _collectionRef.get();

    // Get data from docs and convert map to List
    //final allData = querySnapshot.docs[0].data()!["Name"];
    //print(allData.data()!["Name"]);
    
    
   print(Name);
  
  
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
        itemCount: length,
        itemBuilder: (context, index) {
          return SizedBox(height:90,
            child: Card(
            //shape:RoundedRectangleBorder(side:BorderSide(color:Color.fromARGB(255, 230, 226, 226)),borderRadius:BorderRadius.circular(10)),
                    child: Center(
                      child: ListTile(
                        title:Text( Name[index]  +""),
                        
                          subtitle:  Row(
                            children: [
                              Text(Desc[index]),
                              SizedBox(width: 20,),
                              Icon(Icons.star,color:Colors.amber),
                              Text("${Rating[index]}"),
                            ],
                          ),
                          
                        
                          leading:
                       Image.network("${Img[index]}",width:57,height:57,fit:BoxFit.cover),
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