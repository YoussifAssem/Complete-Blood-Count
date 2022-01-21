import 'package:completebloodcount/models/doctor_list.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:completebloodcount/models/user.dart';
import 'package:completebloodcount/Screens/carouselSlider.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';


class Doctor extends StatefulWidget {

  static const String screenRoute = 'Doctor_screen';
  const Doctor({Key? key}) : super(key: key);
  @override
  _DoctorState createState() => _DoctorState();
}

class _DoctorState extends State<Doctor>
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
        backgroundColor: Colors.blue[600],
        automaticallyImplyLeading: false,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
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
                    padding: const EdgeInsets.only(left: 20, bottom: 25),
                    child: Text(
                      "View profiles of our\nDoctors",
                      style: GoogleFonts.lato(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Carouselslider(), // to be Carouselslider
                  ),
                  
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "our doctors",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          color: Colors.blue[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: DoctorList(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}
