import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:grpcprovider/service/donorpatientservice.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:grpcprovider/src/service.pb.dart';
import 'package:grpcprovider/src/service.pbgrpc.dart';

import '../global.dart';

class SearchPatient extends StatefulWidget {



  @override
  _SearchPatientState createState() => _SearchPatientState();
}

class _SearchPatientState extends State<SearchPatient> {
  Map<String,dynamic> getusermap=new Map();

  final TextEditingController controller=TextEditingController();

  void senddata(BuildContext context,String code) async {
    User request=new User(
        secretCode: code,
      userId: controller.text
    );
    GetUserDetails temp=await DonorPatientService.client.getuser(request);
    print("Testing search patient");
    getusermap=convertGetUserToMap(temp);
    print(getusermap);
  }

  void sendrequest(Map<String,dynamic> getusermap,String code) async{
    User request=new User(
        secretCode: code,
        userId: controller.text
    );
    User temp=await DonorPatientService.client.sendrequest(request);
    print("Testing search patient");
    print("request sent");
    Map<String,dynamic> sent=convertUserToMap(temp);
    print(sent);
  }

  @override
  Widget build(BuildContext context) {
    UserMap map=Provider.of<UserMap>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Patient",style: TextStyle(fontSize: 25),),
      ),
      drawer: mydrawer(context, map.usermap),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    child: TextField(
                      controller: controller,
                    ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    child: Container(
                      width: 200,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text("Search"),
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        senddata(context,map.usermap['Secret_Code']);
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: getusermap.length!=0?ListView(
                  children: [
                    ListTile(
                      title: Row(children: [
                        Text("Name:  ",style: TextStyle(fontSize: 20),),
                        Text(getusermap['name'],style: TextStyle(fontSize: 20),),
                      ],),
                    ),
                    ListTile(
                      title: Row(children: [
                        Text("User Id:  ",style: TextStyle(fontSize: 20),),
                        Text(getusermap['User_Id'].toString(),style: TextStyle(fontSize: 20),),
                      ],),
                    ),
                    ListTile(
                      title: Row(children: [
                        Text("email:  ",style: TextStyle(fontSize: 20),),
                        Text(getusermap['email'],style: TextStyle(fontSize: 20),),
                      ],),
                    ),
                    ListTile(
                      title: Row(children: [
                        Text("Phone Number:  ",style: TextStyle(fontSize: 20),),
                        Text(getusermap['phone_number'],style: TextStyle(fontSize: 20),),
                      ],),
                    ),
                    ListTile(
                      title: Row(children: [
                        Text("address:  ",style: TextStyle(fontSize: 20),),
                        Text(getusermap['address'],style: TextStyle(fontSize: 20),),
                      ],),
                    ),
                    ListTile(
                      title: Row(children: [
                        Text("User Type:  ",style: TextStyle(fontSize: 20),),
                        Text(getusermap['user_type'],style: TextStyle(fontSize: 20),),
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text("Send Request",style: TextStyle(fontSize: 25),),
                          ),
                        ),
                        onTap: (){
                          sendrequest(getusermap,map.usermap['Secret_Code']);
                        },
                      ),
                    )
                  ],
                ):Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
