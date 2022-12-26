import 'package:flutter/material.dart';
import 'package:teamone_app/utils/colors_util.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                child: Image.asset("assets/images/back_button.png", height: 41, width: 41),
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Text(
                    'Hello! Register to get\nstarted',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    )),
              ),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                        decoration: InputDecoration(
                          border:InputBorder.none,
                          hintText: 'Full Name',
                        )
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                        decoration: InputDecoration(
                          border:InputBorder.none,
                          hintText: 'Phone Number',
                        )
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                        decoration: InputDecoration(
                          border:InputBorder.none,
                          hintText: 'Student E-mail',
                        )
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border:InputBorder.none,
                            hintText: 'Enter your password',
                          )
                      ),
                    ),
                  )
              ),

              SizedBox(height: 10),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border:InputBorder.none,
                            hintText: 'Confirm password',
                          )
                      ),
                    ),
                  )
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
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),),

              SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' Login Here',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: hexStringToColor("9E88B2"),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
