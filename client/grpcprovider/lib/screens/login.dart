

import 'package:grpcprovider/screens/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:grpcprovider/service/donorpatientservice.dart';
import 'package:provider/provider.dart';
import 'package:grpcprovider/src/service.pb.dart';
import 'package:grpcprovider/src/service.pbgrpc.dart';

import '../global.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Map<String, dynamic> usermap=Map();
  TextEditingController controller=TextEditingController();

  senddata(BuildContext context) async {
    User request=new User(
      secretCode: controller.text
    );
    User temp=await DonorPatientService.client.loginuser(request);
    print("Testing login");
    usermap=convertUserToMap(temp);
    print(usermap);
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text("LOGIN TO THE APP",style: TextStyle(fontSize: 25,color: Colors.lightBlue),),
              Divider(
                color: Colors.grey,
                thickness: 2.0,
              ),
              SizedBox(
                height: 170,
              ),
              Text("Please enter your Secret Code",style: TextStyle(fontSize: 25,color: Colors.lightBlue),),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width/2,
                child: TextField(
                  controller: controller,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                child: Container(
                  width: MediaQuery.of(context).size.width/2,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.black,),)),
                ),
                onTap: ()async{
                  await senddata(context);
                  if(usermap["name"]=="Not Found"){
                    print("no user found");
                    return;
                  }
                  map.setUserMap(usermap);
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
    );
  }
}



//  807798348  1   donor1
// 804162412   0   patient1
