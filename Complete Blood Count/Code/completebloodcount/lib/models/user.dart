import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:completebloodcount/models/blood_analysis.dart';
import 'package:http/http.dart' as http;

class User {
  // ignore: prefer_final_fields, unused_field
  int _userID = 0;
  String _firstname = '';
  String _lastname = '';
  String _birthdate = '';
  String _email = '';
  String _phonenumber = '';
  String _password = '';
  String _gender = '';
  // ignore: prefer_final_fields
  String _type = '';
  // ignore: unused_field
  final _firestore = FirebaseFirestore.instance;
  final url = Uri.https(
      'complete-blood-count-default-rtdb.firebaseio.com', 'signup.json');
  User() {
    //_userID++;
  }
  createData() {
    // ignore: unused_local_variable
    Map<String, dynamic> users = {'email': _email};
  }

  //Named Constructor
  User.addUser(String fN, String lN, String bD, String e, String pN, String p,
      String g, String t) {
    setFirstName(fN);
    setLastName(lN);
    setBirthDate(bD);
    setEmail(e);
    setPhoneNumber(pN);
    setPassword(p);
    setGender(g);
    setType(t);
    //_addIntoDataBase();
    _addData();
    _getData();
  }
  getID() {
    //Read ID From DataBase
  }

  setType(String t) {
    if (t == 'Patient') {
      _type = t;
    } else if (t == 'Doctor') {
      _type = t;
    } else {
      throw 'Error, Please Select Gender';
    }
  }

  getType() {
    return _type;
  }

  setFirstName(String fN) {
    if (fN == '') {
      //Display error in UI
      throw 'Error, please Enter Your First Name';
    }
    _firstname = fN;
  }

  getFirstName() {
    return _firstname;
  }

  setLastName(String lN) {
    if (lN == '') {
      throw 'error, please enter your last name';
    }
    _lastname = lN;
  }

  getLastName() {
    return _lastname;
  }

  setBirthDate(String bD) {
    if (bD == '') {
      //Display error in UI
      throw 'Error, please Enter Your Birth Date';
    }
    _birthdate = bD;
  }

  getBirthDate() {
    return _birthdate;
  }

  setEmail(String e) {
    if (e == '') {
      //Display error in UI
      throw 'Error, please Enter Your Email';
    }
    _email = e;
  }

  getEmail() {
    return _email;
  }

  setPhoneNumber(String pN) {
    if (pN.length == 11) {
      _phonenumber = pN;
    } else {
      //Display error in UI
      throw 'Error, please Enter Your Phone Number Correctly';
    }
  }

  getPhoneNumber() {
    return _phonenumber;
  }

  setPassword(String p) {
    if (p == '') {
      //Display error in UI
      throw 'Error, please Enter Your Password';
    }
    _password = p;
  }

  getPassword() {
    return _password;
  }

  setGender(String g) {
    if (g == 'Male') {
      _gender = g;
    } else if (g == 'Female') {
      _gender = g;
    } else {
      throw 'Error, Please Select Gender';
    }
  }

  getGender() {
    return _gender;
  }

  logIn(String email, String password) {
    setEmail(email);
    setPassword(password);
    //Log In Join to the new page
  }

  sendMessage(String email, String message) {
    //Check from database the email if it consists we will send the message
  }

  editProfile(
      {String? firstName,
      String? lastName,
      String? email,
      String? birthDate,
      String? phone,
      String? password}) {
    setFirstName(firstName!);
    setLastName(lastName!);
    setEmail(email!);
    setPassword(password!);
    setBirthDate(birthDate!);
    setPhoneNumber(phone!);

    //This will edit the user profile and update the database
    _updateDataInDataBase(getFirstName(), getLastName(), getEmail(),
        getBirthDate(), getPhoneNumber(), getPassword());
  }

  viewMessages() {
    //This function will view data from database
  }
  register() {
    //This function will take an object from Registeration and use the class
  }
  viewResults() {
    // ignore: unused_local_variable
    BloodAnalysis blood = BloodAnalysis();
    // ignore: avoid_print
    print(blood.viewResults());
  }

/*
  _addIntoDataBase() {
    _firestore.collection('signUp').add({
      'ID': _userID,
      'firstName': getFirstName(),
      'lastName': getLastName(),
      'email': getEmail(),
      'password': getPassword(),
      'birthDate': getBirthDate(),
      'phoneNumber': getPhoneNumber(),
      'gender': getGender(),
      'type': getType(),
      //'sender':signedInUser.email,
    });
  }
*/
  // ignore: unused_element
  _addData() async {
    Map<dynamic, dynamic> map = {
      // 'ID': _userID,
      'firstName': getFirstName(),
      'lastName': getLastName(),
      'email': getEmail(),
      'password': getPassword(),
      'birthDate': getBirthDate(),
      'phoneNumber': getPhoneNumber(),
      'gender': getGender(),
      'type': getType(),
    };
    // ignore: unused_local_variable

    // ignore: unused_local_variable
    await http.post(url, body: json.encode(map));
  }

  // ignore: unused_element
  _getData() async {
    // ignore: unused_local_variable
    final res = await http.get(url);
    // ignore: unused_local_variable
    final data = jsonDecode(res.body) as Map<dynamic, dynamic>;
    data.forEach((key, value) {
      // ignore: avoid_print
      print(value);
    });
  }

  // ignore: unused_element
  _updateDataInDataBase(String firstName, String lastName, String email,
      String birthDate, String phone, String password) async {
    //This function will update data into data base
    // ignore: unused_local_variable
    Map<dynamic, dynamic> map = {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'birthDate': birthDate,
      'phoneNumber': phone,
    };
    // ignore: unused_local_variable
    final res = await http.get(url);
    // ignore: unused_local_variable
    final data = jsonDecode(res.body) as Map<dynamic, dynamic>;
    data.forEach((key, value) async {
      if (email == value) {}
    });
  }
}
