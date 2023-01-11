/*import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_google_places/flutter_google_places.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  GoogleMapController? myMapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Teamone",
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
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: GoogleMap(
              mapType: MapType.terrain,
              onMapCreated: (GoogleMapController controller) {},
              initialCameraPosition: _kGooglePlex,
            ),
          ),
          buildTextField(),
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
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                const SizedBox(width: 24),
                IconButton(
                  icon: Icon(Icons.call),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.people),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showGoogleAutoComplete() async {
    const kGoogleApiKey = "AIzaSyBqffWJhEB2IZIbABVULrIIAkoJJXoZOkk";

    Prediction? p = await PlacesAutocomplete.show(
        context: context,
        apiKey: kGoogleApiKey,
        mode: Mode.overlay, // Mode.fullscreen
        language: "fr",
        components: [new Component(Component.country, "fr")]);
  }

  Widget buildTextField() {
    return Positioned(
      top: 130,
      left: 10,
      right: 10,
      child: Container(
        width: Get.width,
        height: 50,
        padding: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 4,
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextFormField(
          readOnly: true,
          onTap: () {
            showGoogleAutoComplete();
          },
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xffA7A7A7)),
          decoration: InputDecoration(
            hintText: 'Search for a destination',
            hintStyle:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.search,
              ),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Widget buildCurrentLocationIcon() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100, right: 12),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.deepPurple,
          child: Icon(
            Icons.my_location,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
*/