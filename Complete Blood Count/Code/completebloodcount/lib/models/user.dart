import 'package:completebloodcount/Services/user_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class User {
  // ignore: prefer_final_fields, unused_field
  late String _name;
  late String _email;
  late String _phonenumber;
  late String _password;
  late String _gender;
  userServices uS = userServices(FirebaseAuth.instance);
  // ignore: prefer_final_fields
  late String _type;
  signUp(
      {required String name,
      required String email,
      required String phone,
      required String password,
      required String gender,
      required String type}) {
    _setName(name);
    _setEmail(email);
    _setPhoneNumber(phone);
    _setPassword(password);
    _setGender(gender);
    _setType(type);
    _addUserInDB();
    if (_checkUser() == '') {
      return '';
    } else {
      return 'Error';
    }
  }

  Future<String?> signOut() async {
    await uS.signOut();
  }

  login(String email, String password) async {
    userServices u = userServices(FirebaseAuth.instance);
    _setEmail(email);
    _setPassword(password);
    if (await u.logIn(getEmail(), getPassword()) == 'Done') {
      return '';
    } else {
      return 'Error';
    }
  }

  Future<String?> _addUserInDB() async {
    await uS.register(
        name: getName(),
        email: getEmail(),
        password: getPassword(),
        phoneNumber: getPhoneNumber(),
        gender: getGender(),
        type: getType());
  }

  _checkUser() {
    if (_name == '' ||
        _email == '' ||
        _phonenumber == '' ||
        _password == '' ||
        _phonenumber.length <= 10) {
      return 'Error';
    } else {
      return '';
    }
  }

  _setType(String t) {
    _type = t;
  }

  getType() {
    if (_type == 'Patient' || _type == 'Doctor') {
      return _type;
    } else {
      return 'Error';
    }
  }

  _setName(String n) {
    _name = n;
  }

  getName() {
    if (_name == '') {
      return 'Error';
    } else {
      return _name;
    }
  }

  _setEmail(String e) {
    _email = e;
  }

  getEmail() {
    if (_email == '') {
      return 'Error';
    } else {
      return _email;
    }
  }

  _setPhoneNumber(String pN) {
    _phonenumber = pN;
  }

  getPhoneNumber() {
    if (_phonenumber.length == 11) {
      return _phonenumber;
    } else {
      return 'Error';
    }
  }

  _setPassword(String p) {
    _password = p;
  }

  getPassword() {
    if (_password == '') {
      return 'Error';
    } else {
      return _password;
    }
  }

  _setGender(String g) {
    _gender = g;
  }

  getGender() {
    if (_gender == 'Male' || _gender == 'Female') {
      return _gender;
    } else {
      return 'Error';
    }
  }
}
