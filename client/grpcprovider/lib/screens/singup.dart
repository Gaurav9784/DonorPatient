import 'dart:convert';

import 'package:grpcprovider/global.dart';
import 'package:grpcprovider/screens/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:grpcprovider/service/donorpatientservice.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import 'package:grpcprovider/src/service.pb.dart';
import 'package:grpcprovider/src/service.pbgrpc.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Map<String, dynamic> usermap=Map();

  final TextEditingController namecontroller = TextEditingController();

  final TextEditingController addresscontroller = TextEditingController();

  final TextEditingController phonenumbercontroller = TextEditingController();

  final TextEditingController emailnumbercontroller = TextEditingController();

  String usertypecontroller="donor";

  final TextEditingController diseasecontroller = TextEditingController();

  // senddata(BuildContext context) async {
  //   Map data = {
  //     'name': namecontroller.text,
  //     'address': addresscontroller.text,
  //     'email': emailnumbercontroller.text,
  //     'phone_number': phonenumbercontroller.text,
  //     'user_type': usertypecontroller
  //   };
  //   if(namecontroller.text==""||addresscontroller.text==""||emailnumbercontroller.text==""||phonenumbercontroller.text==""){
  //     AlertDialog alert = AlertDialog(
  //       title: Text("Error"),
  //       content: Text("Please fill necessary details"),
  //       actions: [
  //       ],
  //     );
  //     showDialog(context: context, builder: (context) {
  //       return alert;
  //     },);
  //     return;
  //   }
  //   String body = json.encode(data);
  //   var url = Uri.parse("http://localhost:9000/createuser");
  //   final response = await http.post(url, body: body);
  //   usermap = json.decode(response.body);
  // }
  senddata(BuildContext context) async{
    User request=new User(
      name: namecontroller.text,
      userType: usertypecontroller,
      address: addresscontroller.text,
      age: "20",
      phoneNumber: phonenumbercontroller.text,
      email: emailnumbercontroller.text,
      disease: diseasecontroller.text
    );
    User temp=await DonorPatientService.client.createuser(request);
    print("Testing signup");
    usermap=convertUserToMap(temp);
    print(usermap);
    print(usermap['User_Id']);
    print(usermap['User_Id'].runtimeType);
  }
  @override
  Widget build(BuildContext context) {
    UserMap map=Provider.of<UserMap>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Donor-Patient App",
          style: TextStyle(fontSize: 20, color: Colors.deepOrange),),
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
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Name", style: TextStyle(fontSize: 20),),
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
                    Text("Address", style: TextStyle(fontSize: 20),),
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
                    Text("Email", style: TextStyle(fontSize: 20),),
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
                    Text("Phone No.", style: TextStyle(fontSize: 20),),
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
                    Text("User Type", style: TextStyle(fontSize: 20),),
                    Container(
                      width: 200,
                      child: DropdownButton<String>(
                        value: usertypecontroller,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        items: <String>['donor', 'patient']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            usertypecontroller = newValue!;
                          });
                        },
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
                    Text("Disease", style: TextStyle(fontSize: 20),),
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
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 2,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(child: Text(
                      "SignUp", style: TextStyle(fontSize: 20, color: Colors
                        .black,),)),
                  ),
                  onTap: ()async {
                    await senddata(context);
                    map.setUserMap(usermap);
                    print("1111");
                    print(map.usermap);
                    Navigator.pushAndRemoveUntil(
                        context, MaterialPageRoute(builder: (context) {
                      return MyProfile();
                    },),(route)=>false);
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


