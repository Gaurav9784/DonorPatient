import 'package:grpcprovider/screens/login.dart';
import 'package:grpcprovider/screens/loginsingup.dart';
import 'package:grpcprovider/screens/myprofile.dart';
import 'package:grpcprovider/screens/singup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'global.dart';

void main() {
  runApp(ChangeNotifierProvider(child: MyApp(),create: (context) => UserMap(),));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginSignup()
    );
  }
}

