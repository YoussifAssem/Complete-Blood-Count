import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatefulWidget {

   static const String screenRoute = 'home_screen';
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  

//late User user;
  @override
  void initState() {
    super.initState();
    //_getUser();
    
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 7),
    );

    animationController.repeat();
  }

  // void _getUser() {
  //   final user = _auth.currentUser;
  // }

  @override
  void dispose() {
    
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    late String _message = "Welcome";
    return Scaffold(
      appBar: AppBar(
       // title: Text("Welcome"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[600],
         title : Container( 
           
          //child : const Text(
           // 'Welcome',
           
          //), 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
      
            children: [
              RotationTransition(
                turns: Tween(begin: 0.0, end: 3.0).animate(animationController),
                
                  
                 
                   
                    //Padding(
                      //padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        
                      child: Image.asset(
                        "images/app_icon.jpg",
                        scale: 9.0,
                        width: 60,
                        height: 40,),
                        width: 50,
                        
                        ),
                  
                  
                  ),
                  Container(
                    
                //width: MediaQuery.of(context).size.width/1.3,
               
                child: Text(
                  
                  _message,
                  
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    
                    fontWeight: FontWeight.w400,
                    
                  ),
                ),
              ),
            ],),
        ), 
        ),
        
        backgroundColor: Colors.white,
      
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
