import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: camel_case_types
class userServices {
  Future<String?> addUser(
      {required String name,
      required String email,
      required String password,
      required String phoneNumber,
      required String gender,
      required String type}) async {
    await FirebaseFirestore.instance.collection('signUp').add({
      'name': name,
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
      'gender': gender,
      'type': type,
      //'sender':signedInUser.email,
    });
  }

/*
  logIn(String email, String password) {
    _setEmail(email);
    _setPassword(password);
  }

  sendMessage(String email, String message) {
    //Check from database the email if it consists we will send the message
  }

  editProfile({String? name, String? email, String? phone, String? password}) {
    _setName(name!);
    _setEmail(email!);
    _setPassword(password!);
    _setPhoneNumber(phone!);
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
  */
}
