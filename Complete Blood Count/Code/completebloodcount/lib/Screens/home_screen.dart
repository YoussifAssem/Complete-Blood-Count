import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/painting.dart';

//import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue[700],
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [Image.asset('images/covid.jpg')],
            ),
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                ''' About Us: ''',
                textAlign: TextAlign.center,
                maxLines: 20,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )),
          Container(
              child: Text(
            ''' our system application helps to determine   whether you are having covid-19, by filling your   blood analysis. once you did it, system starts to   analyize data and sends back a report whether you have a cornavirus or not ''',
            textAlign: TextAlign.center,
            maxLines: 20,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          )),
        ],
      ),
    );
  }
}
