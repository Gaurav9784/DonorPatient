import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:grpcprovider/service/donorpatientservice.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../global.dart';
import 'myprofile.dart';

import 'package:grpcprovider/src/service.pb.dart';
import 'package:grpcprovider/src/service.pbgrpc.dart';



class UpdateDetails extends StatefulWidget {
  @override
  State<UpdateDetails> createState() => _UpdateDetailsState();
}
//

class _UpdateDetailsState extends State<UpdateDetails> {
  Map<String,dynamic> updatedusermap=Map();

  final TextEditingController namecontroller=TextEditingController();

  final TextEditingController addresscontroller=TextEditingController();

  final TextEditingController phonenumbercontroller=TextEditingController();

  final TextEditingController emailnumbercontroller=TextEditingController();

  final TextEditingController diseasecontroller=TextEditingController();

  updatedata(BuildContext context,String user_type,String Secret_Code) async{
    User request=new User(
      name: namecontroller.text,
      address: addresscontroller.text,
      age: "20",
      phoneNumber: phonenumbercontroller.text,
      email: emailnumbercontroller.text,
      disease: diseasecontroller.text,
      secretCode: Secret_Code,
      userType: user_type,
    );
    User temp=await DonorPatientService.client.updatecontactdetails(request);
    print("Testing updatedetails");
    updatedusermap=convertUserToMap(temp);
    print(updatedusermap);
  }

  @override
  Widget build(BuildContext context) {
    UserMap map=Provider.of<UserMap>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Donor-Patient App",style: TextStyle(fontSize: 20,color: Colors.deepOrange),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/1.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Name",style: TextStyle(fontSize: 20),),
                    Container(
                      width: 200,
                      child: TextField(
                        controller: namecontroller,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Address",style: TextStyle(fontSize: 20),),
                    Container(
                      width: 200,
                      child: TextField(
                        controller: addresscontroller,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Email",style: TextStyle(fontSize: 20),),
                    Container(
                      width: 200,
                      child: TextField(
                        controller: emailnumbercontroller,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Phone No.",style: TextStyle(fontSize: 20),),
                    Container(
                      width: 200,
                      child: TextField(
                        controller: phonenumbercontroller,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Disease",style: TextStyle(fontSize: 20),),
                    Container(
                      width: 200,
                      child: TextField(
                        controller: diseasecontroller,
                        decoration: InputDecoration(hintText: "If patient"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  child: Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(child: Text("Update Details",style: TextStyle(fontSize: 20,color: Colors.black,),)),
                  ),
                  onTap: ()async {
                    // print("Check");
                    // print(map.usermap);
                    await updatedata(context,map.usermap['user_type'],map.usermap['Secret_Code']);
                    map.updateUserMap(updatedusermap);
                    print(map.usermap);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyProfile(),));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
