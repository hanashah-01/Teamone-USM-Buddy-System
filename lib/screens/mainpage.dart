import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Teamone",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: GoogleMap(
        mapType: MapType.terrain,

        onMapCreated: (GoogleMapController controller) {

        }, initialCameraPosition: _kGooglePlex,
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
                    onPressed: () {},
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
}
