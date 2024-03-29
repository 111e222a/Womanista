import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:womanista/Doctor_Provider.dart';
import 'DoctorProfile.dart';
import 'main.dart';
import 'package:file_picker/file_picker.dart';
class DoctorForm extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: DoctorFormApp(),
    );
  }
}

class DoctorFormApp extends StatefulWidget {
  const DoctorFormApp({Key? key}) : super(key: key);

  @override
  State<DoctorFormApp> createState() => _DoctorFormAppState();
}

class _DoctorFormAppState extends State<DoctorFormApp> {
  var show="";
  final textController_1 = TextEditingController();
  final textController_2 = TextEditingController();
  final textController_3 = TextEditingController();
  final textController_4 = TextEditingController();
  var phone="";
  var name="";
  var address="";
  var cnic="";

validateName(String value) {
if (value.length == 0) {
      setState((){name="Please Enter Your Name";});
}
else {
      setState((){name="";});
      return true; 
}
return false;
}

validatePhone(String value) {
String patttern = r'(^(?:[+0]9)?[0-9]{11}$)';
RegExp regExp = new RegExp(patttern);
if (value.length == 0) {
      setState((){phone="Please Enter Mobile Number";});
      return false;
}
else if (!regExp.hasMatch(value)) 
      {setState((){phone="Please Enter Valid Mobile Number";});
      return false;}
else
      {
        setState((){phone="";});
        return true;
      }

return false;     
}

validateAddress(String value) {
if (value.length == 0) {
      setState((){address="Please Enter Your Address";});
}
else {
      setState((){address="";});
      return true;
      
}
return false;
}


validateCNIC(String value) {
String patttern = r'(^(?:[+0]9)?[0-9]{13}$)';
RegExp regExp = new RegExp(patttern);
if (value.length == 0) {
      setState((){cnic="Please Enter CNIC Number";});
}
else if (!regExp.hasMatch(value)) 
      setState((){cnic="Please Enter Valid CNIC Number";});
else
      {setState((){cnic="";});
      return true;}

return false;
      
}
  var picked1;
  var picked2;
 var file1="";
 var file2="";
  validateFile1() {
if (picked1 == null) {
      setState((){file1="Please Upload File";});
}
else {
      setState((){file1="";});
      return true;
      
}
return false;
}
validateFile2() {
if (picked2 == null) {
      setState((){file2="Please Upload File";});
}
else {
      setState((){file2="";});
      return true;
      
}
return false;
}
  bool valid=false;
  submit()
  {
    validateName(textController_1.text);
    validatePhone(textController_2.text);
    validateCNIC(textController_3.text);
    validateAddress(textController_4.text);
     
    validateFile1();
     
    validateFile2();
    if( validateName(textController_1.text) && validatePhone(textController_2.text) &&validateCNIC(textController_3.text) && validateAddress(textController_4.text) && picked1!=null && picked2!=null)
       return true;
    else
       return false;
  }
  @override

  Widget build(BuildContext context) {
  //print(dec);
    return  Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        
        backgroundColor:Colors.redAccent,
        title:Text('DoctorApplicationForm',style:TextStyle(color:Colors.white)),
        centerTitle: true,
        elevation:0,
        ),
        body:  
        
       SingleChildScrollView(
         child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                  TextField(
                                decoration: InputDecoration(
       
                                border:  OutlineInputBorder(),
       
                                labelText: 'Enter your Name',
                                labelStyle: TextStyle(color:Colors.grey[500]) ,
                                
                                
                                          enabledBorder:  OutlineInputBorder(
             borderSide:  BorderSide(color: Colors.grey, width: 0.0),
           ),
           focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                                ),
                                //keyboardType: TextInputType.number,
                                inputFormatters:<TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))],
       
                                
                                cursorColor:Colors.grey[500],
                                //onChanged: (value) => num =int.parse(value)   , 
                                controller: textController_1,
                                
                              ),
                Text('$name',style:TextStyle(color:Colors.red)),
                SizedBox(height:20),
                TextField(
                                decoration: InputDecoration(
       
                                border:  OutlineInputBorder(),
       
                                labelText: 'Enter your Phone No',
                                labelStyle: TextStyle(color:Colors.grey[500]) ,
                                
                                
                                          enabledBorder:  OutlineInputBorder(
             borderSide:  BorderSide(color: Colors.grey, width: 0.0),
           ),
           focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                                ),
                                //keyboardType: TextInputType.number,
                                inputFormatters:<TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
       
                                
                                cursorColor:Colors.grey[500],
                                //onChanged: (value) => num =int.parse(value)   , 
                                controller: textController_2,
                                
                              ),
              Text('$phone',style:TextStyle(color:Colors.red)),

                SizedBox(height:20),
                TextField(
                                decoration: InputDecoration(
       
                                border:  OutlineInputBorder(),
       
                                labelText: 'Enter your CNIC',
                
                                labelStyle: TextStyle(color:Colors.grey[500]) ,
                                
                                
                                          enabledBorder:  OutlineInputBorder(
             borderSide:  BorderSide(color: Colors.grey, width: 0.0),
           ),
           focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                                ),
                                //keyboardType: TextInputType.number,
                                inputFormatters:<TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
       
                                
                                cursorColor:Colors.grey[500],
                                //onChanged: (value) => num =int.parse(value)   , 
                                controller: textController_3,
                                
                              ),
                              
              Text('$cnic',style:TextStyle(color:Colors.red)),
                
                SizedBox(height:20),
                TextField(
                                decoration: InputDecoration(
       
                                border:  OutlineInputBorder(),
       
                                labelText: 'Enter your Address',
                                labelStyle: TextStyle(color:Colors.grey[500]) ,
                                
                                
                                          enabledBorder:  OutlineInputBorder(
             borderSide:  BorderSide(color: Colors.grey, width: 0.0),
           ),
           focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.grey) ),
                                ),
                                //keyboardType: TextInputType.number,
                                //inputFormatters:<TextInputFormatter>[FilteringTextInputFormatter],
       
                                
                                cursorColor:Colors.grey[500],
                                //onChanged: (value) => num =int.parse(value)   , 
                                controller: textController_4,
                                
                              ),
              Text('$address',style:TextStyle(color:Colors.red)),

                SizedBox(height:20),
                SizedBox(height:20),
           Text('Upload your CNIC front picture:',style:TextStyle(color:Color.fromARGB(255, 80, 80, 80))),
                SizedBox(height:20),
       
                 RaisedButton(
             child: Text('UPLOAD FILE'),
             onPressed: () async {
             setState((){ 

             picked1 =  FilePicker.platform.pickFiles();});
          
       
       
          if (picked1 != null) {
          }}), 
                Text('$file1',style:TextStyle(color:Colors.red)),

             SizedBox(height:20),
           Text('Upload your CNIC back picture:',style:TextStyle(color:Color.fromARGB(255, 80, 80, 80))),
           
                SizedBox(height:20),
       
                 RaisedButton(
             child: Text('UPLOAD FILE'),
             onPressed: () async {
      setState((){ 

             picked2 =  FilePicker.platform.pickFiles();});
          if (picked2 != null) {
            print(picked2.files.first.name);
         }}),
                Text('$file2',style:TextStyle(color:Colors.red)),

       
             SizedBox(height:20),
             SizedBox(height:20),
             SizedBox(height:20),
          
       
          
                Center(
                  child: Row(mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color:Colors.redAccent,
                        textColor:Colors.white,
                        
                        onPressed: () {
                          if(submit())
                          setState((){
                            show="Your form has been Submitted"; name=""; phone=""; 
                            cnic="";address="";file1=file2="";
 
                          });                            
                          else
                            setState((){
                            show="";

                          });
                        },
                          
                        
                        child: Text('Submit'),
                      ),
                    
                  
                  SizedBox(width:20),
                  
                  
                  RaisedButton(
                    color:Colors.redAccent,
                    textColor:Colors.white,
                    onPressed: () {
                      setState((){
                            show="";name=""; phone=""; 
                            cnic="";address="";file1="";file2="";

                          });
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyMenu()),
                      ); 
                    },
                    
                    child: Text('Go back'),
                  ),
                    ],
                  ),
                ),
                 SizedBox(height:20),
                
                Text('$show'),
                
              ],
            ),
          
             
           ),
       ),
    backgroundColor: Colors.white,
    );
  }
}
//form submit page
/* class SubmitForm extends StatelessWidget {
  const SubmitForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: DoctorFormApp(),
    );
  }
}
class SubmitFormApp extends StatefulWidget {
  const SubmitFormApp({Key? key}) : super(key: key);

  @override
  State<SubmitFormApp> createState() => _SubmitFormAppState();
}

class _SubmitFormAppState extends State<SubmitFormApp> {
  @override
  Widget build(BuildContext context) {
    
  }
} */
