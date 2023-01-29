import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:teamone_app/screens/emergency_page.dart';
import 'package:teamone_app/screens/mainpage.dart';
import 'package:teamone_app/screens/profilepage.dart';
import 'package:teamone_app/screens/searchpage.dart';

class CurrentLocationScreen extends StatefulWidget {
  const CurrentLocationScreen({Key? key}) : super(key: key);

  @override
  State<CurrentLocationScreen> createState() => _CurrentLocationScreenState();
}

class _CurrentLocationScreenState extends State<CurrentLocationScreen> {

  late GoogleMapController googleMapController;

  static const CameraPosition initialCameraPosition = CameraPosition(target: LatLng(5.354750, 100.302391), zoom: 14.0);

  Set<Marker> markers = {};

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
            initialCameraPosition: initialCameraPosition,
            markers: markers,
            zoomControlsEnabled: false,
            mapType: MapType.terrain,
            onMapCreated: (GoogleMapController controller){
              googleMapController = controller;
            },
          )
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

  Future<Position> _determinePosition() async {

    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if(!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if(permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if(permission == LocationPermission.denied) {
        return Future.error('Location services are disabled');
      }
    }

    if (permission == LocationPermission.deniedForever){
      return Future.error('Location services are permanently denied');
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
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
            onPressed: () async {
              Position position = await _determinePosition();

              googleMapController.animateCamera(
                  CameraUpdate.newCameraPosition(
                      CameraPosition(
                          target: LatLng(position.latitude, position.longitude),
                          zoom: 14)));
              markers.clear();

              markers.add(Marker(
                  markerId: const MarkerId('currentLocation'),
                  position: LatLng(position.latitude, position.longitude)));

              setState(() {});

              },
            label: const Text(""),
            icon: const Icon(Icons.location_history, color: Colors.white,),
          ),
        ),
    );
  }
}

