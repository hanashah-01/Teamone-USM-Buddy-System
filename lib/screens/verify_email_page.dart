import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:teamone_app/screens/homescreen.dart';
import 'package:teamone_app/screens/signup.dart';

import '../utils/colors_util.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  bool isEmailVerified = false;
  bool canResendEmail = false;
  Timer? timer;

  @override
  void initState(){
    super.initState();

    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!isEmailVerified){
      sendVerificationEmail();

      timer = Timer.periodic(Duration(seconds: 3), (_) => checkEmailVerified(),);
    }
  }

  @override
  void dispose(){
    timer?.cancel();

    super.dispose();
  }

  Future checkEmailVerified() async {
    /* call after email verification */
    await FirebaseAuth.instance.currentUser!.reload();

    setState((){
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    if (isEmailVerified) timer?.cancel();
  }

  Future sendVerificationEmail() async{
    try{
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();

      setState(() => canResendEmail = false);
      await Future.delayed(Duration(seconds: 5));
      setState(() => canResendEmail = true);
    }catch (e){
      Fluttertoast.showToast(msg: e.toString(),toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 2, backgroundColor: hexStringToColor("9E88B2"));
    }
  }

  @override
  Widget build(BuildContext context) => isEmailVerified
      ? HomeScreen() //set to main page
      : Scaffold(
    backgroundColor: hexStringToColor("FFFFFF"),
    body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 36),
          Padding(
            padding: const EdgeInsets.only(right:320),
            child: GestureDetector(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new SignUpPage())),
                child: Image.asset("assets/images/back_button.png", height: 41, width: 41)),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 98),
            child: Text(
                'OTP Verification',
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                )),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text(
                "Enter the verification code we just sent to your email address.",
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: hexStringToColor("8391A1"),

                )),
          ),
          SizedBox(height: 30),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
            ),
            icon: Icon(Icons.email, size: 32),
            label: Text('Resend Email',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: canResendEmail ? sendVerificationEmail : null,
          ),
          SizedBox(height: 8),
          TextButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
            ),
            child: Text(
              'Cancel',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () => FirebaseAuth.instance.signOut(),
          )
        ],
      ),
    ),
  );
}

