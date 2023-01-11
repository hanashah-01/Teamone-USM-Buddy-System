import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:teamone_app/screens/homescreen.dart';
import 'package:teamone_app/utils/colors_util.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const HomeScreen(),
        title: 'TeamOne',
    );
  }
}

