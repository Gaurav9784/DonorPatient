import 'dart:convert';

import 'package:grpcprovider/screens/acceptrequest.dart';
import 'package:grpcprovider/screens/loginsingup.dart';
import 'package:grpcprovider/screens/myconnection.dart';
import 'package:grpcprovider/screens/myprofile.dart';
import 'package:grpcprovider/screens/searchdonor.dart';
import 'package:grpcprovider/screens/searchpatient.dart';
import 'package:grpcprovider/screens/showalldonors.dart';
import 'package:grpcprovider/screens/showallpatients.dart';
import 'package:flutter/material.dart';
import 'package:grpcprovider/service/donorpatientservice.dart';
import 'package:grpcprovider/src/service.pb.dart';
import 'package:http/http.dart' as http;




class UserMap extends ChangeNotifier{
  Map<String,dynamic> usermap=Map();
  setUserMap(Map<String,dynamic> m){
    usermap=m;
    print("set usermap called");
    print(usermap);
    notifyListeners();
  }
  updateUserMap(Map<String,dynamic> updatedusermap){
    usermap=updatedusermap;
    print("updateusermap called");
    print(usermap);
    notifyListeners();
  }
}

Map<String,dynamic> convertUserToMap(User user){
  Map<String,dynamic> m=Map();
  m['name']=user.name;
  m['User_Id']=user.userId;
  m['Secret_Code']=user.secretCode;
  m['email']=user.email;
  m['phone_number']=user.phoneNumber;
  m['address']=user.address;
  m['user_type']=user.userType;
  m['disease']=user.disease;
  m['requested_user']=user.requestedUser;
  m['pending_request']=user.pendingRequest;
  m['connected_user']=user.connectedUser;
  return m;
}

List<dynamic> convertUserSliceToList(UserSlice slice){
  return slice.userslice;
}

Map<String,dynamic> convertGetUserToMap(GetUserDetails user){
  Map<String,dynamic> m=Map();
  m['name']=user.name;
  m['User_Id']=user.userId;
  m['email']=user.email;
  m['phone_number']=user.phoneNumber;
  m['address']=user.address;
  m['user_type']=user.userType;
  m['disease']=user.disease;
  return m;
}

// class User{
//   String name="";
//   int User_Id =-1;
//   String Secret_Code ="";
//   String Phone_Number ="";
//   String Age ="";
//   String Address ="";
//   String User_Type ="";
//   String Email ="";
//   String Disease ="";
//   Map<dynamic,dynamic> Requested_User =Map();
//   Map<dynamic,dynamic> Pending_Request =Map();
//   Map<dynamic,dynamic> Connected_User=Map();
//
//
//
// }


Drawer mydrawer(BuildContext context,Map<String,dynamic>usermap){
   if(usermap["user_type"]=="donor"){
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[400],
          image: DecorationImage(
            image: AssetImage("images/1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              DrawerHeader(
                child: CircleAvatar(
                  child: Text(usermap["name"][0],style: TextStyle(fontSize: 50),),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person_add,color: Colors.blueAccent,size: 30,),
                title: Text("Patients",style: TextStyle(fontSize: 25),),
                onTap: (){
                  showpatients(context, usermap);
                },
              ),
              Divider(
                color: Colors.blue,
                thickness: 1.5,
              ),
              ListTile(
                leading: Icon(Icons.person,color: Colors.blueAccent,size: 30,),
                title: Text("My Profile",style: TextStyle(fontSize: 25),),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyProfile(),));
                },
              ),
              Divider(
                color: Colors.blue,
                thickness: 1.5,
              ),
              ListTile(
                leading: Icon(Icons.person_pin_circle_rounded,color: Colors.blueAccent,size: 30,),
                title: Text("My Patients",style: TextStyle(fontSize: 25),),
                onTap: (){
                  connections(context, usermap);
                },
              ),
              Divider(
                color: Colors.blue,
                thickness: 1.5,
              ),
              ListTile(
                leading: Icon(Icons.person_pin_circle_rounded,color: Colors.blueAccent,size: 30,),
                title: Text("Search patient",style: TextStyle(fontSize: 25),),
                onTap: (){
                  searchpatient(context, usermap);
                },
              ),
              Divider(
                color: Colors.blue,
                thickness: 1.5,
              ),
              ListTile(
                leading: Icon(Icons.person_pin_circle_rounded,color: Colors.blueAccent,size: 30,),
                title: Text("Accept Request",style: TextStyle(fontSize: 25),),
                onTap: (){
                  acceptrequest(context, usermap);
                },
              ),
              Divider(
                color: Colors.blue,
                thickness: 1.5,
              ),
              ListTile(
                leading: Icon(Icons.info_rounded,color: Colors.blueAccent,size: 30,),
                title: Text("About Us",style: TextStyle(fontSize: 25),),
              ),
              Divider(
                color: Colors.blue,
                thickness: 1.5,
              ),
              ListTile(
                leading: Icon(Icons.contact_support,color: Colors.blueAccent,size: 30,),
                title: Text("Contact Us",style: TextStyle(fontSize: 25),),
              ),
              Divider(
                color: Colors.blue,
                thickness: 1.5,
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.logout,size: 25,),
                          Text("Log Out",style: TextStyle(fontSize: 25),),
                        ],
                      ),
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return LoginSignup();
                        },));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.delete_forever,size: 25,),
                          Text("Delete User",style: TextStyle(fontSize: 25),),
                        ],
                      ),
                      onTap: (){
                        deleteuser(context, usermap);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
   else{
     return Drawer(
       child: Container(
         decoration: BoxDecoration(
           color: Colors.grey[400],
           image: DecorationImage(
             image: AssetImage("images/1.jpeg"),
             fit: BoxFit.cover,
           ),
         ),
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: ListView(
             children: [
               DrawerHeader(
                 child: CircleAvatar(
                   child: Text(usermap["name"][0],style: TextStyle(fontSize: 50),),
                 ),
               ),
               ListTile(
                 leading: Icon(Icons.person_add,color: Colors.blueAccent,size: 30,),
                 title: Text("Donors",style: TextStyle(fontSize: 25),),
                 onTap: (){
                   showdonors(context,usermap);
                 },
               ),
               Divider(
                 color: Colors.blue,
                 thickness: 1.5,
               ),
               ListTile(
                 leading: Icon(Icons.person,color: Colors.blueAccent,size: 30,),
                 title: Text("My Profile",style: TextStyle(fontSize: 25),),
                 onTap: (){
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyProfile(),));
                 },

               ),
               Divider(
                 color: Colors.blue,
                 thickness: 1.5,
               ),
               ListTile(
                 leading: Icon(Icons.person_pin_circle_rounded,color: Colors.blueAccent,size: 30,),
                 title: Text("My Donors",style: TextStyle(fontSize: 25),),
                 onTap: (){
                   connections(context, usermap);
                 },
               ),
               Divider(
                 color: Colors.blue,
                 thickness: 1.5,
               ),
               ListTile(
                 leading: Icon(Icons.person_pin_circle_rounded,color: Colors.blueAccent,size: 30,),
                 title: Text("Search Donor",style: TextStyle(fontSize: 25),),
                 onTap: (){
                   searchdonor(context, usermap);
                 },
               ),
               Divider(
                 color: Colors.blue,
                 thickness: 1.5,
               ),
               ListTile(
                 leading: Icon(Icons.person_pin_circle_rounded,color: Colors.blueAccent,size: 30,),
                 title: Text("Accept Request",style: TextStyle(fontSize: 25),),
                 onTap: (){
                   acceptrequest(context, usermap);
                 },
               ),
               Divider(
                 color: Colors.blue,
                 thickness: 1.5,
               ),
               ListTile(
                 leading: Icon(Icons.info_rounded,color: Colors.blueAccent,size: 30,),
                 title: Text("About Us",style: TextStyle(fontSize: 25),),
               ),
               Divider(
                 color: Colors.blue,
                 thickness: 1.5,
               ),
               ListTile(
                 leading: Icon(Icons.contact_support,color: Colors.blueAccent,size: 30,),
                 title: Text("Contact Us",style: TextStyle(fontSize: 25),),
               ),
               Divider(
                 color: Colors.blue,
                 thickness: 1.5,
               ),
               Center(
                 child: Column(
                   children: [
                     SizedBox(
                       height: 50,
                     ),
                     GestureDetector(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Icon(Icons.logout,size: 25,),
                           Text("Log Out",style: TextStyle(fontSize: 25),),
                         ],
                       ),
                       onTap: (){
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                           return LoginSignup();
                         },));
                       },
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     InkWell(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Icon(Icons.delete_forever,size: 25,),
                           Text("Delete User",style: TextStyle(fontSize: 25),),
                         ],
                       ),
                       onTap: (){
                         deleteuser(context, usermap);
                       },
                     ),
                   ],
                 ),
               ),
             ],
           ),
         ),
       ),
     );
   }
}

//802503441

void showdonors(BuildContext context,Map<String,dynamic>usermap) async{
  List<dynamic> donorlist=[];
  User request=new User(
    secretCode: usermap['Secret_Code'],
  );
  print("temp----------------------------------------------------------------------------------------");
  UserSlice slice=await DonorPatientService.client.getallpatients(request);
  print("Testing show donor");
  donorlist=convertUserSliceToList(slice);
  if(donorlist==null){
    donorlist=[];
  }
  print(donorlist);
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return ShowAllDonors(donorlist: donorlist,usermap: usermap,);
  },));
}

//983124646  6   patient

void showpatients(BuildContext context,Map<String,dynamic>usermap) async{
  List<dynamic> patientlist=[];
  User request=new User(
      secretCode: usermap['Secret_Code'],
  );
  print("temp----------------------------------------------------------------------------------------");
  UserSlice slice=await DonorPatientService.client.getallpatients(request);
  print("Testing show patients");
  patientlist=convertUserSliceToList(slice);
  if(patientlist==null){
    patientlist=[];
  }
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return ShowAllPatients(patientlist: patientlist,usermap: usermap);
  },));
}

void searchdonor(BuildContext context,Map<String,dynamic>usermap){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return SearchDonor();
  },));
}

void searchpatient(BuildContext context,Map<String,dynamic>usermap){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return SearchPatient();
  },));
}

void acceptrequest(BuildContext context,Map<String,dynamic> usermap){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return AcceptRequest();
  },));
}

void connections(BuildContext context,Map<String,dynamic> usermap){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return MyConnections();
  },));
}

void deleteuser(BuildContext context,Map<String,dynamic> usermap) async{
  Map data = {
    'secret_code':usermap["Secret_Code"],
  };

  String body = json.encode(data);
  var url = Uri.parse("http://localhost:9000/getallpatients");
  http.Response response = await http.post(url, body: body);
  print(response.body);
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return LoginSignup();
  },));
}


