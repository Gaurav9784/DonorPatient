
import 'package:grpcprovider/global.dart';
import 'package:flutter/material.dart';

class ShowAllDonors extends StatefulWidget {
  final List<dynamic> donorlist;
  final Map<String,dynamic> usermap;
  ShowAllDonors({required this.donorlist,required this.usermap});

  @override
  _ShowAllDonorsState createState() => _ShowAllDonorsState();
}

class _ShowAllDonorsState extends State<ShowAllDonors> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ALL Donors",style: TextStyle(fontSize: 20),),
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
                    child: Text("Get Patient",style: TextStyle(fontSize: 20),),
                  ),
                ),
                onTap: (){
                },
              ),
              widget.donorlist.length!=0?Expanded(child: ListView.builder(
                itemCount: widget.donorlist.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(widget.donorlist[index].userId,style: TextStyle(fontSize: 20),),
                        Text(widget.donorlist[index].name,style: TextStyle(fontSize: 20),),
                        Text(widget.donorlist[index].userType,style: TextStyle(fontSize: 20),),
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
