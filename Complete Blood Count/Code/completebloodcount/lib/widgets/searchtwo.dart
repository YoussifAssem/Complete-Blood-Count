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
        backgroundColor: Colors.pink[900],
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
    );
  }
}
