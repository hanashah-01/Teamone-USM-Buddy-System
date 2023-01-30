import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class MainPagee extends StatefulWidget {
  MainPagee({Key? key}) : super(key: key);

  @override
  _MainPageeState createState() => _MainPageeState();
}

class _MainPageeState extends State<MainPagee> {
  LatLng? currentPosition;
  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markers = {};
  @override
  void initState() {
    getCurrentLocation();
    super.initState();
  }

  @override

  void getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      currentPosition = LatLng(position.latitude, position.longitude);
      markers.add(
        Marker(
          markerId: MarkerId('12'),
          position: currentPosition!,
          infoWindow: InfoWindow(title: 'Hi!!! Paul\'s here'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: currentPosition != null
      ? GoogleMap(
        mapType: MapType.terrain,
        markers: markers,
        initialCameraPosition: CameraPosition(target: currentPosition!, zoom: 15),
        onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
        },
      )
      : SizedBox.shrink(),
    );
  }

}