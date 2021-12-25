import 'package:completebloodcount/Screens/cbc_test_screen.dart';
import 'package:completebloodcount/Screens/chat_screen.dart';
import 'package:completebloodcount/Screens/chat_screen.dart';
import 'package:completebloodcount/Screens/login_screen.dart';
import 'package:completebloodcount/editprofileone.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:completebloodcount/firestore-data/notificationList.dart';
import 'package:completebloodcount/models/cardModel.dart';
import 'package:completebloodcount/models/user.dart';

import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _doctorName = TextEditingController();
  late User user = User();

//late User user;
  @override
  void initState() {
    super.initState();
    //_getUser();
    _doctorName = TextEditingController();
    animationController = new AnimationController(
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
    _doctorName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late String _message;
    DateTime now = DateTime.now();
    String _currentHour = DateFormat('kk').format(now);
    int hour = int.parse(_currentHour);

    setState(
      () {
        if (hour >= 5 && hour < 12) {
          _message = 'Good Morning';
        } else if (hour >= 12 && hour <= 17) {
          _message = 'Good Afternoon';
        } else {
          _message = 'Good Evening';
        }
      },
    );
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: AppBar(
        // leading: Image.asset('images/dnap.jpg', fit: BoxFit.cover),
        backgroundColor: Colors.blue[600],
        automaticallyImplyLeading: false,
        actions: <Widget>[Container()],
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.only(
            right: 1,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(animationController),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Image.asset(
                        "images/dnap.jpg",
                        scale: 9.0,
                        width: 50,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //width: MediaQuery.of(context).size.width/1.3,
                alignment: Alignment.center,
                child: Text(
                  _message,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                width: 55,
              ),
              IconButton(
                splashRadius: 20,
                color: Colors.white,
                icon: const Icon(Icons.logout),
                onPressed: () async {
                  await user.signOut();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => logInScreen()));
                },
              ),
            ],
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowGlow();
            return true;
          },
          child: ListView(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20, bottom: 10),
                    child: Text(
                      //"Hello " + user.displayName!,
                      'hello ahmed',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20, bottom: 25),
                    child: Text(
                      "Let's Find Your\nDoctor",
                      style: GoogleFonts.lato(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 25),
                    child: TextFormField(
                      textInputAction: TextInputAction.search,
                      controller: _doctorName,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                            left: 20, top: 10, bottom: 10),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: 'Search doctor',
                        hintStyle: GoogleFonts.lato(
                          color: Colors.black26,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                        suffixIcon: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[700]!.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: IconButton(
                            iconSize: 20,
                            splashRadius: 20,
                            color: Colors.white,
                            icon: const Icon(Icons.volume_up),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                      onFieldSubmitted: (String value) {
                        setState(
                          () {
                            value.isEmpty
                                ? Container()
                                : Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(
                                          //searchKey: value,
                                          ),
                                    ),
                                  );
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 23, bottom: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "We care for you",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          color: Colors.blue[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    //child: Carouselslider(), // to be Carouselslider
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Specialists",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          color: Colors.blue[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Container(
                    height: 150,
                    padding: const EdgeInsets.only(top: 14),
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      itemCount: cards.length,
                      itemBuilder: (context, index) {
                        //print("images path: ${cards[index].cardImage.toString()}");
                        return Container(
                          margin: const EdgeInsets.only(right: 14),
                          height: 150,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(cards[index].cardBackground),
                              boxShadow: [
                                const BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(3, 3),
                                ),
                              ]
                              // image: DecorationImage(
                              //   image: AssetImage(cards[index].cardImage),
                              //   fit: BoxFit.fill,
                              // ),
                              ),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HomePage(//to be ExploreList
                                            //type: cards[index].doctor,
                                            )),
                              );
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 29,
                                      child: Icon(
                                        cards[index].cardIcon,
                                        size: 26,
                                        color:
                                            Color(cards[index].cardBackground),
                                      )),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    cards[index].doctor,
                                    style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Top Rated",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          color: Colors.blue[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    //child: TopRatedList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[600],
        selectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
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
