import 'package:grpcprovider/global.dart';
import 'package:grpcprovider/screens/updatedetails.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MyProfile extends StatelessWidget {
  MyProfile();
  Widget build(BuildContext context) {
    UserMap map=Provider.of<UserMap>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile",style: TextStyle(fontSize: 20,color: Colors.white70),),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child:Consumer<UserMap>(
          builder: (context, value, child) {
            print("myprofile consumer called");
            print(value.usermap);
            // return Container();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[500],
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(MediaQuery.of(context).size.width, 200),
                    )
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue[700],
                        radius: 70.0,
                        child: Text(value.usermap["name"][0].toUpperCase(),style: TextStyle(fontSize: 50),),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(value.usermap["name"],style: TextStyle(color: Colors.white70,fontSize: 20),),
                      SizedBox(
                        height: 10,
                      ),
                      Text(value.usermap['email'],style: TextStyle(color: Colors.white70,fontSize: 20),)
                    ],
                  ),
                ),
                Expanded(
                  // width: MediaQuery.of(context).size.width,
                  // height: 100,
                  child: ListView(
                    children: [
                      Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Address",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              SizedBox(
                                height: 10,
                              ),
                              Text(value.usermap['address'],style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Phone Number",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              SizedBox(
                                height: 10,
                              ),
                              Text(value.usermap['phone_number'],style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Age",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              SizedBox(
                                height: 10,
                              ),
                              Text("20",style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("User Id",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              SizedBox(
                                height: 10,
                              ),
                              Text(value.usermap['User_Id'].toString(),style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Secret Code",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              SizedBox(
                                height: 10,
                              ),
                              Text(value.usermap['Secret_Code'],style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              ],
            );
          },
        ),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: (){
          Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) {
            return UpdateDetails();
          },));
        },
      ),
      drawer: mydrawer(context,map.usermap),
    );
  }

}
