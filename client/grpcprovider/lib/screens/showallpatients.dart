
import 'package:grpcprovider/global.dart';
import 'package:flutter/material.dart';


class ShowAllPatients extends StatefulWidget {
  final List<dynamic> patientlist;
  final Map<String,dynamic> usermap;
  ShowAllPatients({required this.patientlist,required this.usermap});

  @override
  _ShowAllPatientsState createState() => _ShowAllPatientsState();
}

class _ShowAllPatientsState extends State<ShowAllPatients> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ALL Patients",style: TextStyle(fontSize: 20),),
      ),
      drawer: mydrawer(context,widget.usermap),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text("Get Donors",style: TextStyle(fontSize: 20),),
                  ),
                ),
                onTap: (){
                },
              ),
              widget.patientlist.length!=0?Expanded(child: ListView.builder(
                itemCount: widget.patientlist.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(widget.patientlist[index].userId,style: TextStyle(fontSize: 20),),
                        Text(widget.patientlist[index].name,style: TextStyle(fontSize: 20),),
                        Text(widget.patientlist[index].userType,style: TextStyle(fontSize: 20),),
                        // Text(donorlist[index]["email"]),
                        // Text(donorlist[index]["phone_number"]),
                      ],
                    ),
                  );
                },)):Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
