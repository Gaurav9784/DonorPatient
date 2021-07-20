
import 'package:grpcprovider/global.dart';
import 'package:flutter/material.dart';
import 'package:grpcprovider/service/donorpatientservice.dart';
import 'package:provider/provider.dart';
import 'package:grpcprovider/src/service.pb.dart';
import 'package:grpcprovider/src/service.pbgrpc.dart';

class MyConnections extends StatefulWidget {

  @override
  _MyConnectionsState createState() => _MyConnectionsState();
}

class _MyConnectionsState extends State<MyConnections> {

  Map<String,dynamic> getusermap=Map();

  cancelconnection(String User_Id,String code) async{
    User request=new User(
      secretCode: code,
      userId: User_Id,
    );
    User temp=await DonorPatientService.client.cancelconnection(request);
    print("Testing myconnections");
    getusermap=convertUserToMap(temp);
    print(getusermap);
  }
  @override
  Widget build(BuildContext context) {
    UserMap map=Provider.of<UserMap>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Connections",style: TextStyle(fontSize: 25),),
      ),
      drawer: mydrawer(context, map.usermap),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: map.usermap["connected_user"].length!=0?
          Consumer<UserMap>(
            builder:(context, value, child) =>  ListView.builder(
              itemCount: value.usermap["connected_user"].length,
              itemBuilder: (context, index) {
                String key=value.usermap["connected_user"].keys.elementAt(index);
                return ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Connected User: ",style: TextStyle(fontSize: 25),),
                          Text(key,style: TextStyle(fontSize: 25),),
                        ],
                      ),
                    ],
                  ),
                  onTap: ()async{
                      await cancelconnection(key,map.usermap['Secret_Code']);
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
