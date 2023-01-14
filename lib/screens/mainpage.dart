import 'dart:async';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:teamone_app/screens/searchpage.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  LatLng? currentPosition;
  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markers = {};
  @override
  void initState() {
    getCurrentLocation();
    super.initState();
  }

  void getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      currentPosition = LatLng(position.latitude, position.longitude);
      markers.add(
        Marker(
          markerId: MarkerId('12'),
          position: currentPosition!,
          infoWindow: InfoWindow(title: 'Hi!!! Jane\'s here'),
        ),
      );
    });
  }

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
              markers: markers,
              initialCameraPosition: CameraPosition(target: currentPosition!, zoom: 15),
              onMapCreated: (GoogleMapController controller){
                _controller.complete(controller);
              },
            ),
          ),
          buildProfileTile(),
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
                IconButton(icon: Icon(Icons.menu),
                    onPressed: () {},
                ),
                IconButton(icon: Icon(Icons.search),
                    onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MapView()),
                      );
                    },
                ),
                const SizedBox(width: 24),
                IconButton(icon: Icon(Icons.call),
                    onPressed: () {},
                ),
                IconButton(icon: Icon(Icons.people),
                    onPressed: () {},
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

              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.deepPurpleAccent,
              ),
              const SizedBox(
                width: 15,
              ),
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
                          text: 'Jane Doe!',
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
}
