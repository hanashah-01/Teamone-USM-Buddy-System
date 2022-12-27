import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // page4u9d (1:3)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupeo2aaQB (6T51NQKj2Cgzwqrmkkeo2A)
              padding: EdgeInsets.fromLTRB(11*fem, 50*fem, 13*fem, 7*fem),
              width: double.infinity,
              height: 87*fem,
              decoration: BoxDecoration (
                color: Color(0xcc45256d),
              ),
              child: Container(
                // frame174r6o (1:25)
                padding: EdgeInsets.fromLTRB(3.75*fem, 0*fem, 0*fem, 0*fem),
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // ionchevronbackcircleoutline9rb (1:26)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 134.25*fem, 0*fem),
                      width: 22.5*fem,
                      height: 22.5*fem,
                      child: Image.asset(
                        'assets/page-1/images/ion-chevron-back-circle-outline.png',
                        width: 22.5*fem,
                        height: 22.5*fem,
                      ),
                    ),
                    Container(
                      // teamone5tf (1:29)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 130.5*fem, 2*fem),
                      child: Text(
                        'TeamOne',
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.3625*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Container(
                      // frame5xBm (1:30)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                      width: 24*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/page-1/images/frame-5-1g7.png',
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // autogroupwkye51V (6T528xsoqhqDNiaperWKYE)
              padding: EdgeInsets.fromLTRB(37*fem, 129*fem, 34*fem, 37*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupcdlnoCP (6T51fPqQupCFz4hL5kcDLn)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 101*fem),
                    padding: EdgeInsets.fromLTRB(31.5*fem, 30*fem, 19.5*fem, 28*fem),
                    width: 356*fem,
                    decoration: BoxDecoration (
                      color: Color(0xccfef7ff),
                      borderRadius: BorderRadius.circular(30*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupz586TXq (6T51tinYKEdUv7wXnoz586)
                          margin: EdgeInsets.fromLTRB(57.5*fem, 0*fem, 68.5*fem, 26*fem),
                          padding: EdgeInsets.fromLTRB(62*fem, 56*fem, 67*fem, 55*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/page-1/images/ellipse-16.png',
                              ),
                            ),
                          ),
                          child: Center(
                            // iconlocationoutlineABM (1:21)
                            child: SizedBox(
                              width: 50*fem,
                              height: 66*fem,
                              child: Image.asset(
                                'assets/page-1/images/icon-location-outline.png',
                                width: 50*fem,
                                height: 66*fem,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // enablelocationrps (1:33)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 11*fem),
                          child: Text(
                            'Enable Location',
                            style: TextStyle(
                              fontFamily: 'Urbanist',
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // weneedaccesstoyourlocationtobe (1:34)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
                          constraints: BoxConstraints (
                            maxWidth: 305*fem,
                          ),
                          child: Text(
                            'We need access to your location to be able to use this service',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Urbanist',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff423f3f),
                            ),
                          ),
                        ),
                        Container(
                          // group6qgo (1:38)
                          margin: EdgeInsets.fromLTRB(29.5*fem, 0*fem, 44.5*fem, 9*fem),
                          width: double.infinity,
                          height: 50*fem,
                          decoration: BoxDecoration (
                            color: Color(0xcc45256d),
                            borderRadius: BorderRadius.circular(22*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Enable Location',
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                fontSize: 24*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // group5H31 (1:35)
                          margin: EdgeInsets.fromLTRB(30.5*fem, 0*fem, 43.5*fem, 0*fem),
                          width: double.infinity,
                          height: 50*fem,
                          decoration: BoxDecoration (
                            color: Color(0xcc9e88b2),
                            borderRadius: BorderRadius.circular(22*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Not Now',
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                fontSize: 24*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group11xQ3 (1:4)
                    margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(30*fem, 15*fem, 22*fem, 17*fem),
                    width: 352*fem,
                    height: 62*fem,
                    decoration: BoxDecoration (
                      color: Color(0xcc45256d),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Container(
                      // frame173Trb (1:6)
                      padding: EdgeInsets.fromLTRB(3.75*fem, 0.71*fem, 5*fem, 0.71*fem),
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 2*fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // home6Pm (1:7)
                            margin: EdgeInsets.fromLTRB(0*fem, 1.15*fem, 63.75*fem, 0*fem),
                            width: 22.5*fem,
                            height: 23.85*fem,
                            child: Image.asset(
                              'assets/page-1/images/home.png',
                              width: 22.5*fem,
                              height: 23.85*fem,
                            ),
                          ),
                          Container(
                            // iconmagnifyingglasszzw (1:11)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 63.75*fem, 0*fem),
                            width: 30*fem,
                            height: 28.57*fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-magnifying-glass-Yrf.png',
                              width: 30*fem,
                              height: 28.57*fem,
                            ),
                          ),
                          Opacity(
                            // iconphonefillKGX (1:13)
                            opacity: 0.5,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 68.75*fem, 0*fem),
                              width: 22.5*fem,
                              height: 22.5*fem,
                              child: Image.asset(
                                'assets/page-1/images/icon-phone-fill-DVd.png',
                                width: 22.5*fem,
                                height: 22.5*fem,
                              ),
                            ),
                          ),
                          Opacity(
                            // userR4f (1:15)
                            opacity: 0.5,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                              width: 20*fem,
                              height: 22.5*fem,
                              child: Image.asset(
                                'assets/page-1/images/user-GbD.png',
                                width: 20*fem,
                                height: 22.5*fem,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}