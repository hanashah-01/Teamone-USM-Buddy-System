import 'package:flutter/material.dart';
import 'package:teamone_app/Components/emergency_contacts_data.dart';
import 'package:teamone_app/Components/personal_emergency_contacts.dart';
import 'package:teamone_app/screens/mainpage.dart';
import 'package:teamone_app/screens/profilepage.dart';
import 'package:teamone_app/screens/searchpage.dart';
import 'package:teamone_app/screens/userprofile.dart';
import 'package:teamone_app/screens/viewprofile.dart';

class emergency_page extends StatefulWidget {
  const emergency_page({Key? key}) : super(key: key);

  @override
  _emergency_pageState createState() => _emergency_pageState();
}

class _emergency_pageState extends State<emergency_page>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(
    vsync: this,
    initialIndex: 0,
    length: 2,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "TeamOne",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: const <Widget>[
            Tab(text: "Emergency Contacts"),
            Tab(text: "Personal Contacts")
          ],
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
                  onPressed: () {},
                ),
                IconButton(icon: Icon(Icons.people),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfile()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(controller: _controller,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[ContactsData(), PersonalEmergencyContacts()]),
    );
  }
}
