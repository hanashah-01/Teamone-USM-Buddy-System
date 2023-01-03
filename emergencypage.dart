import 'package:flutter/material.dart';
import 'package:flutterapp/moduleapp/generatedemergencypagewidget/GeneratedEmergencyPageWidget.dart';
import 'package:flutterapp/moduleapp/generatedemergencycontactwidget/GeneratedEmergencyContactWidget.dart';
import 'package:flutterapp/moduleapp/generatedaddemergencycontactwidget/GeneratedAddEmergencyContactWidget.dart';
import 'package:flutterapp/moduleapp/generatedviewprofilewidget/GeneratedViewprofileWidget.dart';
import 'package:flutterapp/moduleapp/generatedaddemergencycontactwidget1/GeneratedAddEmergencyContactWidget1.dart';
import 'package:flutterapp/moduleapp/generatedemergencypagewidget3/GeneratedEmergencyPageWidget3.dart';
import 'package:flutterapp/moduleapp/generateduncheckedwidget6/GeneratedUncheckedWidget6.dart';

void main() {
  runApp(ModuleApp());
}

class ModuleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedViewprofileWidget',
      routes: {
        '/GeneratedEmergencyPageWidget': (context) =>
            GeneratedEmergencyPageWidget(),
        '/GeneratedEmergencyContactWidget': (context) =>
            GeneratedEmergencyContactWidget(),
        '/GeneratedAddEmergencyContactWidget': (context) =>
            GeneratedAddEmergencyContactWidget(),
        '/GeneratedViewprofileWidget': (context) =>
            GeneratedViewprofileWidget(),
        '/GeneratedAddEmergencyContactWidget1': (context) =>
            GeneratedAddEmergencyContactWidget1(),
        '/GeneratedEmergencyPageWidget3': (context) =>
            GeneratedEmergencyPageWidget3(),
        '/GeneratedUncheckedWidget6': (context) => GeneratedUncheckedWidget6(),
      },
    );
  }
}
