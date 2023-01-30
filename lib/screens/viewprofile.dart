import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teamone_app/screens/changepass.dart';
import 'package:teamone_app/screens/editprofile.dart';
import 'package:teamone_app/screens/userprofile.dart';

import '../utils/colors_util.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexStringToColor("FFFFFF"),
      body:SafeArea(
          child: Column(
              children: [
                SizedBox(height: 36),

                Padding(
                  padding: const EdgeInsets.only(right:320),
                  child: GestureDetector(
                      onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new UserProfile())),
                      child: Image.asset("assets/images/back_button.png", height: 41, width: 41)),
                ),

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text(
                      'Your Profile',
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      )),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text(
                      'Full Name',
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.normal,
                        color: hexStringToColor("#5A5A5A"),
                        fontSize: 14,
                      )),
                ),

                SizedBox(height: 3),

                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text(
                      user.displayName!,
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 18,
                      )),
                ),

                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text(
                      'E-mail',
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.normal,
                        color: hexStringToColor("#5A5A5A"),
                        fontSize: 14,
                      )),
                ),

                SizedBox(height: 3),

                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text(
                      user.email!,
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 18,
                      )),
                ),

                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text(
                      'Phone Number',
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.normal,
                        color: hexStringToColor("#5A5A5A"),
                        fontSize: 14,
                      )),
                ),

                SizedBox(height: 3),

                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text(
                      user.phoneNumber!,
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 18,
                      )),
                ),

                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new EditProfile())),

                        child: Text(
                          'Edit Profile',
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

                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
    builder: (BuildContext context) => new ChangePass())),

                        child: Text(
                          'Change Password',
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

              ]),
        
      ),
    );
  }
}
