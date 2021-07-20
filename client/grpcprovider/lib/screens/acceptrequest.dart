import 'dart:convert';
import 'dart:ffi';


import 'package:flutter/material.dart';
import 'package:grpcprovider/service/donorpatientservice.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../global.dart';
import 'package:grpcprovider/src/service.pb.dart';
import 'package:grpcprovider/src/service.pbgrpc.dart';



class AcceptRequest extends StatefulWidget {

  @override
  _AcceptRequestState createState() => _AcceptRequestState();
}

class _AcceptRequestState extends State<AcceptRequest> {
  Map<String,dynamic> getusermap=Map();
  accept(String User_Id,String code) async{
    User request=new User(
      secretCode: code,
      userId: User_Id,

    );
    User temp=await DonorPatientService.client.acceptrequest(request);
    print("Request accepted");
    getusermap=convertUserToMap(temp);
    print(getusermap);
  }
  

  @override
  Widget build(BuildContext context) {
    UserMap map=Provider.of<UserMap>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Accept request",style: TextStyle(fontSize: 25),),
      ),
      drawer: mydrawer(context, map.usermap),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: map.usermap["pending_request"].length!=0?
          Consumer<UserMap>(
            builder:(context, value, child) =>  ListView.builder(
              itemCount: value.usermap["pending_request"].length,
                itemBuilder: (context, index) {
                String key=value.usermap["pending_request"].keys.elementAt(index);
                  return ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Requested User: ",style: TextStyle(fontSize: 25),),
                            Text(key,style: TextStyle(fontSize: 25),),
                          ],
                        ),
                      ],
                    ),
                    onTap: ()async {
                        await accept(key,map.usermap['Secret_Code']);
                        map.setUserMap(getusermap);
                    },
                  );
                },),
          )
          :Container(),
        ),
      ),
    );
  }
}
//983124646   6  patient