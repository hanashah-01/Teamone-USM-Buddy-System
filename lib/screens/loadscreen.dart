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
        // page61K1 (1:41)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouppbmuYZq (6T531ragE5jJty9fiJpBMU)
              width: double.infinity,
              height: 173*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle3165Z (1:56)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 428*fem,
                        height: 87*fem,
                        child: Opacity(
                          opacity: 0.8,
                          child: Container(
                            decoration: BoxDecoration (
                              color: Color(0xcc45256d),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // frame6B71 (1:57)
                    left: 12*fem,
                    top: 52*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3.75*fem, 0*fem, 0*fem, 0*fem),
                      width: 404*fem,
                      height: 121*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // ionchevronbackcircleoutlinefns (1:58)
                            margin: EdgeInsets.fromLTRB(0*fem, 3.75*fem, 111.25*fem, 0*fem),
                            width: 22.5*fem,
                            height: 22.5*fem,
                            child: Image.asset(
                              'assets/page-1/images/ion-chevron-back-circle-outline-HQF.png',
                              width: 22.5*fem,
                              height: 22.5*fem,
                            ),
                          ),
                          Container(
                            // teamtrackingz4T (1:61)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107.5*fem, 0*fem),
                            child: Text(
                              'Team Tracking',
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
                            // frame5tvX (1:62)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // akariconssearchcbd (1:63)
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/akar-icons-search.png',
                                    width: 24*fem,
                                    height: 24*fem,
                                  ),
                                ),
                                SizedBox(
                                  height: 12*fem,
                                ),
                                Container(
                                  // bxcurrentlocation8K5 (1:65)
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/bx-current-location-adZ.png',
                                    width: 24*fem,
                                    height: 24*fem,
                                  ),
                                ),
                                SizedBox(
                                  height: 12*fem,
                                ),
                                Container(
                                  // frame4rF5 (1:68)
                                  width: 24*fem,
                                  height: 48*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/frame-4.png',
                                    width: 24*fem,
                                    height: 48*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupte4rn8j (6T53GGLLKUAQYPgcRSTE4r)
              padding: EdgeInsets.fromLTRB(38*fem, 40*fem, 34*fem, 37*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group87B1 (1:74)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 115*fem),
                    padding: EdgeInsets.fromLTRB(37*fem, 42*fem, 19*fem, 82*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xccfef7ff),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupwanvCiF (6T53f61e5CjT7Wh1NXWanv)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                          width: 300*fem,
                          height: 252*fem,
                          child: Image.asset(
                            'assets/page-1/images/auto-group-wanv.png',
                            width: 300*fem,
                            height: 252*fem,
                          ),
                        ),
                        Container(
                          // findingpairJWP (1:80)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 24*fem),
                          child: Text(
                            'Finding Pair',
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
                          // group7DtF (1:89)
                          margin: EdgeInsets.fromLTRB(31*fem, 0*fem, 43*fem, 0*fem),
                          width: double.infinity,
                          height: 50*fem,
                          decoration: BoxDecoration (
                            color: Color(0xcc45256d),
                            borderRadius: BorderRadius.circular(22*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Cancel',
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
                    // group96BM (1:42)
                    margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(30*fem, 15*fem, 22*fem, 17*fem),
                    width: 352*fem,
                    height: 62*fem,
                    decoration: BoxDecoration (
                      color: Color(0xcc45256d),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Container(
                      // frame173o5m (1:44)
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
                          Opacity(
                            // homeVjH (1:45)
                            opacity: 0.5,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 1.15*fem, 63.75*fem, 0*fem),
                              width: 22.5*fem,
                              height: 23.85*fem,
                              child: Image.asset(
                                'assets/page-1/images/home-TVV.png',
                                width: 22.5*fem,
                                height: 23.85*fem,
                              ),
                            ),
                          ),
                          Container(
                            // iconmagnifyingglassAaX (1:49)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 63.75*fem, 0*fem),
                            width: 30*fem,
                            height: 28.57*fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-magnifying-glass.png',
                              width: 30*fem,
                              height: 28.57*fem,
                            ),
                          ),
                          Opacity(
                            // iconphonefillsjq (1:51)
                            opacity: 0.5,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 68.75*fem, 0*fem),
                              width: 22.5*fem,
                              height: 22.5*fem,
                              child: Image.asset(
                                'assets/page-1/images/icon-phone-fill.png',
                                width: 22.5*fem,
                                height: 22.5*fem,
                              ),
                            ),
                          ),
                          Opacity(
                            // usernbu (1:53)
                            opacity: 0.5,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                              width: 20*fem,
                              height: 22.5*fem,
                              child: Image.asset(
                                'assets/page-1/images/user.png',
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