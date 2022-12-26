import 'package:flutter/material.dart';
import 'package:teamone_app/screens/forgotpass_screen.dart';
import 'package:teamone_app/screens/homescreen.dart';
import 'package:teamone_app/screens/login.dart';
import 'package:teamone_app/screens/otp_screen.dart';
import 'package:teamone_app/screens/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: const HomeScreen(),
    );
  }
}

