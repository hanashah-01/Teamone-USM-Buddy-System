import 'dart:async';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:teamone_app/screens/emergency_page.dart';
import 'package:teamone_app/screens/profilepage.dart';
import 'package:teamone_app/screens/searchpage.dart';
import 'package:teamone_app/screens/current_location.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition initialPosition = CameraPosition(target: LatLng(5.354750, 100.302391), zoom: 14.0);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "TeamOne",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 110,
            left: 0,
            right: 0,
            bottom: 0,
            child: GoogleMap(
              mapType: MapType.terrain,
              initialCameraPosition: initialPosition,
              onMapCreated: (GoogleMapController controller){
                _controller.complete(controller);
              },
            ),
          ),
          buildProfileTile(),

          buildCurrentLocationIcon(),
      ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Theme.of(context).colorScheme.primary,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(icon: Icon(Icons.home),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    },
                ),
                IconButton(icon: Icon(Icons.search),
                    onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchPlaces()),
                      );
                    },
                ),
                const SizedBox(width: 24),
                IconButton(icon: Icon(Icons.call),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => emergency_page()),
                      );
                    },
                ),
                IconButton(icon: Icon(Icons.people),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AdminPage()),
                      );
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProfileTile(){
    return Positioned(
        top: 30,
        left: 20,
        right: 20,
        child: Container(
          width: Get.width,

          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Good Day!',
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontFamily: 'Urbanist',
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: ' Test234!',
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("Do you want an accompany?", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.deepPurple),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }

    Widget buildCurrentLocationIcon(){
      return Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100, right: 12),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CurrentLocationScreen()),
                );
            },
              icon: Icon(Icons.my_location, color: Colors.white,),  //icon data for elevated button
              label: Text(""), //label text
            ),

        ),
      );
    }
  }



