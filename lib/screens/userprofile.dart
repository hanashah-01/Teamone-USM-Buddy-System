import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teamone_app/screens/mainpage.dart';
import 'package:teamone_app/screens/searchpage.dart';
import 'package:teamone_app/screens/signup.dart';
import 'package:teamone_app/screens/viewprofile.dart';

import '../utils/colors_util.dart';
import 'forgotpass_screen.dart';
import 'homescreen.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexStringToColor("FFFFFF"),
      body: SafeArea(
        child: Column(
            children: [
              SizedBox(height: 36),

              Padding(
                padding: const EdgeInsets.only(right: 320),
                child: GestureDetector(
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (
                                BuildContext context) => new MainPage())),
                    child: Image.asset(
                        "assets/images/back_button.png", height: 41,
                        width: 41)),
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text(
                    'User Profile',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    )),
              ),
              SizedBox(height: 20),

              Center(
                  child: Text(
                      //user.displayName!,
                    "Hana Shah",
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      )),
                ),

              SizedBox(height: 10),

              Center(
                  child: Text(
                      //user.phoneNumber!,
                    "0132308970",
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      )),
                ),
              SizedBox(height: 20),
              
              Padding(
                padding:EdgeInsets.symmetric(horizontal:10.0),
                child:Container(
                  height:1.0,
                  width:350.0,
                  color: hexStringToColor("E3D7D7"),),),

              SizedBox(height: 20),

          Row(
              children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                width:50,
                height: 30,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(
                        "assets/images/user.png"),)
          )
      ),
              ),
        Text("View Profile",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                Padding(
                  padding: const EdgeInsets.only(left: 142.0),
                  child: GestureDetector(onTap: () =>
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (
                              BuildContext context) => new ViewProfile())),
                    child: Container(
                        width:50,
                        height: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(
                                "assets/images/chevron-right.png"),)
                        )
                    ),
                  ),
                ),
        ]
    ),







            ]),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Theme.of(context).colorScheme.primary,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(icon: Icon(Icons.home),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  },
                ),
                IconButton(icon: Icon(Icons.search),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchPlaces()),
                    );
                  },
                ),
                const SizedBox(width: 24),
                IconButton(icon: Icon(Icons.call),
                  onPressed: () {},
                ),
                IconButton(icon: Icon(Icons.people),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfile()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
