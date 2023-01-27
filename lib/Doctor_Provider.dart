class Doctor{
String Name="";
String Desc="";
var Rating=0.0 ;
String profileDesc="";
Doctor({required this.Name,required this.Desc,required this.Rating,required this.profileDesc});


}
class DoctorData{
  List<Doctor> doctor=[Doctor(Name:"Dr. Mary Jones",Desc:"Gynecologist",Rating:4.5,profileDesc:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sapien turpis. \nDuis convallis pulvinar porta. Donec ex lorem, dignissim vel risus in, condimentum placerat metus. Mauris dictum in ante sed molestie. Pellentesque pretium eget ante vel consectetur. Donec vel mollis enim, vitae ultrices odio. Proin eu lacinia massa, a cursus dolor."),
Doctor(Name:"Dr. Olivia Smith",Desc:"Gynecologist",Rating:5.0,profileDesc:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sapien turpis. \nDuis convallis pulvinar porta. Donec ex lorem, dignissim vel risus in, condimentum placerat metus. Mauris dictum in ante sed molestie. Pellentesque pretium eget ante vel consectetur. Donec vel mollis enim, vitae ultrices odio. Proin eu lacinia massa, a cursus dolor."),
Doctor(Name:"Dr. Lily James",Desc:"Gynecologist",Rating:4.0,profileDesc:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sapien turpis. \nDuis convallis pulvinar porta. Donec ex lorem, dignissim vel risus in, condimentum placerat metus. Mauris dictum in ante sed molestie. Pellentesque pretium eget ante vel consectetur. Donec vel mollis enim, vitae ultrices odio. Proin eu lacinia massa, a cursus dolor."),
Doctor(Name:"Dr. Sophia",Desc:"Gynecologist",Rating:3.5,profileDesc:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sapien turpis. \nDuis convallis pulvinar porta. Donec ex lorem, dignissim vel risus in, condimentum placerat metus. Mauris dictum in ante sed molestie. Pellentesque pretium eget ante vel consectetur. Donec vel mollis enim, vitae ultrices odio. Proin eu lacinia massa, a cursus dolor."),
Doctor(Name:"Dr. Isabella Raven",Desc:"Gynecologist",Rating:4.5,profileDesc:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sapien turpis. \nDuis convallis pulvinar porta. Donec ex lorem, dignissim vel risus in, condimentum placerat metus. Mauris dictum in ante sed molestie. Pellentesque pretium eget ante vel consectetur. Donec vel mollis enim, vitae ultrices odio. Proin eu lacinia massa, a cursus dolor."),

];
}