import 'package:completebloodcount/Screens/cbc_test_screen.dart';
import 'package:completebloodcount/Screens/chat_screen.dart';
import 'package:completebloodcount/Screens/home_screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<search> {
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Search';
    return Scaffold(
      appBar: AppBar(
        title: !isSearching
            ? const Text(appTitle)
            : const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    icon: Icon(Icons.search, color: Colors.white),
                    hintText: 'Search Here...',
                    hintStyle: TextStyle(color: Colors.white)),
              ),
        backgroundColor: Colors.blue[700],
        actions: <Widget>[
          isSearching
              ? IconButton(
                  icon: const Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      isSearching = false;
                    });
                  },
                )
              : IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      isSearching = true;
                    });
                  },
                ),
        ],
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bluedna.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[600],
        selectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: 'Home',
              icon: IconButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()))
                      },
                  icon: const Icon(Icons.home))),
          BottomNavigationBarItem(
            label: 'Enter Blood Data',
            icon: IconButton(
                onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => cbcTest()))
                    },
                icon: const Icon(Icons.bloodtype)),
          ),
          BottomNavigationBarItem(
            label: 'Chats',
            icon: IconButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChatScreen()))
                    },
                icon: const Icon(Icons.chat)),
          ),
        ],
      ),
    );
  }
}
