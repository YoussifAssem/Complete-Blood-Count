import 'package:completebloodcount/models/blood_analysis.dart';

class User {
  // ignore: prefer_final_fields, unused_field
  String _name = '';
  String _email = '';
  String _phonenumber = '';
  String _password = '';
  String _gender = '';
  // ignore: prefer_final_fields
  String _type = '';
  addUser(
      {required String name,
      required String email,
      required String phone,
      required String password,
      required String gender,
      required String type}) {
    setName(name);
    setEmail(email);
    setPhoneNumber(phone);
    setPassword(password);
    setGender(gender);
    setType(type);
    if (setName(name) == '' &&
        setEmail(email) == '' &&
        setPhoneNumber(phone) == '' &&
        setPassword(password) == '') {
      return '';
    } else {
      return 'Error';
    }
  }

  setType(String t) {
    if (t == 'Patient') {
      _type = t;
      return '';
    } else if (t == 'Doctor') {
      _type = t;
    } else {
      return 'Error, Please Select Gender';
    }
  }

  getType() {
    return _type;
  }

  setName(String n) {
    if (n == '') {
      //Display error in UI
      return 'Error, please Enter Your First Name';
    }
    _name = n;
    return '';
  }

  getName() {
    return _name;
  }

  setEmail(String e) {
    if (e == '') {
      //Display error in UI
      return 'Error, please Enter Your Email';
    }
    _email = e;
    return '';
  }

  getEmail() {
    return _email;
  }

  setPhoneNumber(String pN) {
    if (pN.length == 11) {
      _phonenumber = pN;
      return '';
    } else {
      return 'Error, please Enter Your Phone Number Correctly';
    }
  }

  getPhoneNumber() {
    return _phonenumber;
  }

  setPassword(String p) {
    if (p == '') {
      return 'Error, please Enter Your Password';
    }
    _password = p;
    return '';
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
      return 'Error, Please Select Gender';
    }
    return '';
  }

  getGender() {
    return _gender;
  }

  logIn(String email, String password) {
    setEmail(email);
    setPassword(password);
  }

  sendMessage(String email, String message) {
    //Check from database the email if it consists we will send the message
  }

  editProfile({String? name, String? email, String? phone, String? password}) {
    setName(name!);
    setEmail(email!);
    setPassword(password!);
    setPhoneNumber(phone!);
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
      'name': getName(),
      'email': getEmail(),
      'password': getPassword(),
      'phoneNumber': getPhoneNumber(),
      'gender': getGender(),
      'type': getType(),
    };
  }
}
