import 'package:flutter/material.dart';
import 'package:teamone_app/screens/addgroup.dart';
import 'package:teamone_app/screens/mainpage.dart';
import 'package:teamone_app/screens/searchpage.dart';

class joingroup extends StatefulWidget {
  const joingroup({Key? key}) : super(key: key);

  @override
  State<joingroup> createState() => _joingroupState();
}

class _joingroupState extends State<joingroup> {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => addgroup(),
              ),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.grey,
      ),
      body: Center(

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
