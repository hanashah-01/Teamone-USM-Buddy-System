import 'package:flutter/material.dart';
import 'package:teamone_app/screens/forgotpass_screen.dart';
import 'package:teamone_app/screens/homescreen.dart';
import 'package:teamone_app/screens/signup.dart';
import 'package:teamone_app/utils/colors_util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                                BuildContext context) => new HomeScreen())),
                    child: Image.asset(
                        "assets/images/back_button.png", height: 41,
                        width: 41)),
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Text(
                    'Welcome Back! Glad\nto see you again!',
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
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your student e-mail',
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
                            border: InputBorder.none,
                            hintText: 'Enter your password',
                          )
                      ),
                    ),
                  )
              ),
              SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.only(right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ForgotPassScreen();
                      },
                        ),
                        );
              },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: signIn,
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

              SizedBox(height: 180),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SignUpPage())),
                    child: Text(
                      ' Register Now',
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

  void signIn() async {
    Fluttertoast.showToast(msg: "User logged in successfully.",toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2, backgroundColor: hexStringToColor("9E88B2"));
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),);
  }
}
