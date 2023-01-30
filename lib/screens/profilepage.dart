import 'package:flutter/material.dart';
import 'package:profile/profile.dart';
import 'package:teamone_app/screens/emergency_page.dart';
import 'package:teamone_app/screens/mainpage.dart';
import 'package:teamone_app/screens/searchpage.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
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
        body: Center(
          child: Profile(
            imageUrl: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
            name: "Hana",
            website: "",
            designation: "",
            email: "hanashah82@student.usm.my",
            phone_number: "01757736053",
          ),
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
}