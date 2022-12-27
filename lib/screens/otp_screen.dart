import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:teamone_app/screens/signup.dart';
import 'package:teamone_app/utils/colors_util.dart';
import 'package:email_auth/email_auth.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  final TextEditingController _otpController = TextEditingController();

  late EmailAuth emailAuth;

  void sendOTP() async{
    emailAuth =  new EmailAuth(sessionName: "Test Session");
    var res = await emailAuth.sendOtp(recipientMail: user.email!);
    if (res){
      Fluttertoast.showToast(msg: "OTP sent.",toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 2, backgroundColor: hexStringToColor("9E88B2"));
    }else{
      Fluttertoast.showToast(msg: "We could not send the OTP.",toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 2, backgroundColor: hexStringToColor("9E88B2"));
    }
  }

  void verifyOTP(){
    var res = emailAuth.validateOtp(
      recipientMail: user.email!, userOtp: _otpController.text);
    if (res){
      Fluttertoast.showToast(msg: "OTP Verified.",toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 2, backgroundColor: hexStringToColor("9E88B2"));
    }else{
      Fluttertoast.showToast(msg: "Invalid OTP.",toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 2, backgroundColor: hexStringToColor("9E88B2"));
    }
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
                child: Image.asset("assets/images/back_button.png", height: 41, width: 41),
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
                padding: const EdgeInsets.only(left: 27),
                child: Text(
                    "Enter the verification code we just sent to your email address.",
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
                        decoration: InputDecoration(
                          border:InputBorder.none,
                          hintText: 'Enter OTP Code',
                        )
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.only(right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: sendOTP,
                      child: Text(
                        "Send OTP",
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
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
                      onTap: verifyOTP,
                      child: Text(
                        'Verify',
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
                    "Didn't receive code?",
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' Resend',
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
