
import 'package:flutter/material.dart';

import '../view1/book.dart';
import '../view1/downland.dart';
import '../view1/person.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _selectedIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.book),
    Icon(Icons.download),
    Icon(Icons.person),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Hi Rasel, Welcome Back"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Search For Your Favorite Pictures",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(9.0),
              child: SizedBox(
                height: 45,
                width: 370,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      hintText: "Write the pictures",
                      border: OutlineInputBorder()),
                ),
              ),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 10),
                  child: Text(
                    "Recommended Pictures",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 270,
              // width: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 160,
                            width: 280,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://source.unsplash.com/random?sig=$index/100x100")),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 280,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                const Text(
                                  "Rate the picture",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("4.9 (5.0)")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Saved Pictures",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 280,
              // width: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 160,
                            width: 280,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://source.unsplash.com/random?sig=$index")),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 280,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                const Text(
                                  "Rate the picture",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("3.7 (4.0)")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: "Home",
              backgroundColor: Colors.blue,
              icon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => _screens[0])));
                  },
                  child: const Icon(Icons.home))),
          BottomNavigationBarItem(
              label: "Book",
              icon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => _screens[1])));
                  },
                  child: const Icon(Icons.book))),
          BottomNavigationBarItem(
              label: "Download",
              icon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => _screens[2])));
                  },
                  child: const InkWell(child: Icon(Icons.download)))),
          BottomNavigationBarItem(
              label: "Person",
              icon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => _screens[3])));
                  },
                  
                  child: const Icon(Icons.person))),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  late final List<Widget> _screens = [
    const HomePage(),
    const Book(),
    const Downloand(),
    const Person(),
  ];
}
