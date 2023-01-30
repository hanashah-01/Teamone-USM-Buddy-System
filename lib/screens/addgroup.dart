import 'package:teamone_app/screens/emergency_page.dart';
import 'package:teamone_app/screens/mainpage.dart';
import 'package:teamone_app/screens/post_details_page.dart';
import 'package:teamone_app/screens/profilepage.dart';
import 'package:teamone_app/screens/searchpage.dart';
import 'package:teamone_app/widget/post_cell_widget.dart';
import 'package:flutter/material.dart';

class Post {
  final String title;
  final String author;
  final String date;

  Post({required this.title, required this.author, required this.date});
}

class addGroup extends StatelessWidget {
  final data = [
    Post(
      title: 'Destination: Indah Kembara',
      author: 'Maria',
      date: '25 Jan 2023',
    ),
    Post(
      title: 'Destination: RST',
      author: 'Salsabila',
      date: '25 Jan 2020',
    ),
    Post(
      title: 'Destination: Fajar Harapan',
      author: 'Qistina',
      date: '25 Jan 2020',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "TeamOne",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        tooltip: 'Add Group',
        child: const Icon(Icons.add_circle),
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
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for articles, author, and tags',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Existing Group',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final post = data[index];
                    return PostCellWidget(
                        title: post.title,
                        author: post.author,
                        date: post.date,
                        onClick: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => PostDetailsPage(
                                title: post.title,
                                author: post.author,
                                date: post.date,
                              ),
                            ),
                          );
                        },
                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}