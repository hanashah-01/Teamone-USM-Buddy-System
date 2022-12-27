import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teamone_app/screens/login.dart';
import 'package:teamone_app/utils/colors_util.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  final _emailController = TextEditingController();

  @override
  void dispose(){
    _emailController.dispose();
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
                child: GestureDetector
                  (onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new LoginPage())),
                    child: Image.asset("assets/images/back_button.png", height: 41, width: 41)),
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 77),
                child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    )),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: Text(
                    "Don't worry! It occurs. Please enter the email address linked with your account.",
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: hexStringToColor("8391A1")
                    )),
              ),
              SizedBox(height: 30),

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
                          hintText: 'Enter your student e-mail',
                        )
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

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
                      onTap: passwordReset,
                      child: Text(
                        'Reset Password',
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

              SizedBox(height: 240),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember Password?",
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new LoginPage())),
                    child: Text(
                      ' Login',
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

  Future passwordReset() async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          content: Text(
              "The password reset link has been sent to your e-mail."),
        );
      });
    } on FirebaseAuthException catch (e){
      print(e);
      showDialog(context: context, builder: (context){
        return AlertDialog(
          content: Text(e.message.toString()),
        );
      });
    }
  }

}
