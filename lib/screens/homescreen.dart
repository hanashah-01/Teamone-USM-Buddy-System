import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teamone_app/screens/login.dart';
import 'package:teamone_app/screens/signup.dart';
import 'package:teamone_app/utils/colors_util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexStringToColor("FFFFFF"),
      body:SafeArea(
        child: Column(
            children: [

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(),
                child: Text(
                    'Teamone',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                      fontSize: 64,
                    )),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(),
                child: Text(
                    "USM Buddy System",
                    style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                    )),
              ),
              SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.only(),
                child: Image.asset("assets/images/teamone_logo1.png", height: 232, width: 211),
              ),

              SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new LoginPage())),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),),

              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new SignUpPage())),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.black
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),),


            ]),
      ),
    );
  }
}
