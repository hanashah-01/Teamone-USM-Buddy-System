import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
            top: 110,
            left: 0,
            right: 0,
            bottom: 0,
            child: GoogleMap(
            mapType: MapType.terrain,
              onMapCreated: (GoogleMapController controller) {
              },
              initialCameraPosition: _kGooglePlex,
      ),
          ),
          buildProfileTile(),

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

  Widget buildTextField(){
    return Positioned(
      top: 130,
      left: 10,
      right: 10,
      child: Container(
        width: Get.width,
        height:50,
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

          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xffA7A7A7)),
          decoration: InputDecoration(
            hintText: 'Search for a destination',
            hintStyle: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
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

  Widget buildCurrentLocationIcon(){
    return Align(
      alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100, right: 12),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.deepPurple,
            child: Icon(Icons.my_location, color: Colors.white,),
          ),
        ),
    );
  }
}
