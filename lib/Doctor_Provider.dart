class Doctor{
String Name="";
String Desc="";
var Rating=0.0 ;
Doctor({required this.Name,required this.Desc,required this.Rating});


}
class DoctorData{
  List<Doctor> doctor=[Doctor(Name:"Dr. Mary Jones",Desc:"Gynecologist",Rating:4.5),
Doctor(Name:"Dr. Olivia Smith",Desc:"Gynecologist",Rating:5.0),
Doctor(Name:"Dr. Lily James",Desc:"Gynecologist",Rating:4.0),
Doctor(Name:"Dr. Sophia",Desc:"Gynecologist",Rating:3.5),
Doctor(Name:"Dr. Isabella Raven",Desc:"Gynecologist",Rating:4.5),

];
}