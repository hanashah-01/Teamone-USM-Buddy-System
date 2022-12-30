import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:teamone_app/screens/homescreen.dart';
import 'package:teamone_app/screens/login.dart';
import 'package:teamone_app/screens/verify_email_page.dart';
import 'package:teamone_app/utils/colors_util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _fullNameController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

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
                        builder: (BuildContext context) => new HomeScreen())),
                    child: Image.asset("assets/images/back_button.png", height: 41, width: 41)),
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
                        controller: _fullNameController,
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
                        controller: _phoneNumberController,
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
                        controller: _emailController,
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
                          controller: _passwordController,
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
                          controller: _confirmPasswordController,
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
                    child: GestureDetector(
                      onTap: signUp,

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
                  ),
                ),),

              SizedBox(height: 40),

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
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new LoginPage())),
                    child: Text(
                      ' Login Here',
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        color: hexStringToColor("9E88B2"),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }

  bool passwordConfirmed(){
    if(_passwordController.text.trim()==_confirmPasswordController.text.trim()){
      return true;
    }else{
      return false;
    }
  }

  void signUp() async {
    if (passwordConfirmed()){
      Fluttertoast.showToast(msg: "User signed up successfully.",toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 2, backgroundColor: hexStringToColor("9E88B2"));
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),);

      addUserDetails(_fullNameController.text.trim(), _phoneNumberController.text.trim(), _emailController.text.trim(),
          _passwordController.text.trim());

      Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyEmailPage()));
    }
    }

    Future addUserDetails(String fullName, String phoneNumber, String email, String password) async{
      await FirebaseFirestore.instance.collection('users').add({
        'full name': fullName,
        'phone number': phoneNumber,
        'student e-mail': email,
        'password': password,
      });
    }
  }
