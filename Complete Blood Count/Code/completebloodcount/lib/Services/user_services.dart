import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

// ignore: camel_case_types
class userServices {
  final FirebaseAuth _auth;
  userServices(this._auth);
  Future<String?> register(
      {required String name,
      required String email,
      required String password,
      required String phoneNumber,
      required String gender,
      required String type}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return e.message;
      } else if (e.code == 'email-already-in-use') {
        return e.message;
      } else {
        return e.message;
      }
    }
    String uid = _auth.currentUser!.uid;
    await FirebaseFirestore.instance.collection('signUp').add({
      'id': uid,
      'name': name,
      'phoneNumber': phoneNumber,
      'gender': gender,
      'type': type,
    });
  }

  Future<String?> signOut() async {
    await _auth.signOut();
  }

  Future<String?> logIn(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }
}
