import 'package:grpcprovider/global.dart';
import 'package:grpcprovider/screens/login.dart';
import 'package:grpcprovider/screens/singup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginSignup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Donor-Patient App",style: TextStyle(fontSize: 20,color: Colors.deepOrange),),
        centerTitle: true,
      ),
      body:Container(
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
            Text("Welcome to Donor-Patient App",style: TextStyle(fontSize: 25,color: Colors.lightBlue),),
            Divider(
              color: Colors.grey,
              thickness: 2.0,
            ),
            SizedBox(
              height: 170,
            ),
            GestureDetector(
              child: Container(
                width: MediaQuery.of(context).size.width/2,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Center(child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.black,),)),
              ),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) {
                  return Login();
                },),
                );
              },
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
                child: Center(child: Text("SignUp",style: TextStyle(fontSize: 20,color: Colors.black,),)),
              ),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) {
                  return SignUp();
                },));
              },
            ),
          ],
        ),
      ),
    );
  }
}
