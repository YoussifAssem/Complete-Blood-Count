import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: camel_case_types
class userServices {
  final FirebaseAuth _auth;
  CollectionReference user = FirebaseFirestore.instance.collection('Users');

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
      _addUser(
          id: _auth.currentUser!.uid,
          name: name,
          phoneNumber: phoneNumber,
          gender: gender,
          type: type);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return e.message;
      } else if (e.code == 'email-already-in-use') {
        return e.message;
      } else {
        return e.message;
      }
    }
  }

  Future<Object?> _addUser(
      {required String id,
      required String name,
      required String phoneNumber,
      required String gender,
      required String type}) async {
    try {
      DocumentReference ref = user.doc(_auth.currentUser!.uid);
      FirebaseFirestore.instance.runTransaction((transaction) async {
        DocumentSnapshot snapShot = await transaction.get(ref);
        if (!snapShot.exists) {
          ref.set({
            'name': name,
            'phoneNumber': phoneNumber,
            'gender': gender,
            'type': type
          });
        }
      });
    } catch (e) {
      return e;
    }
  }

  Future<String?> signOut() async {
    await _auth.signOut();
  }

  Future<String?> logIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return 'Done';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<Object?> editProfile(
      {required String name,
      required String phone,
      required String gender,
      required String type,
      required String password}) async {
    try {
      DocumentReference ref = user.doc(_auth.currentUser!.uid);
      FirebaseFirestore.instance.runTransaction((transaction) async {
        DocumentSnapshot snapShot = await transaction.get(ref);
        _auth.currentUser!.updatePassword(password);
        if (snapShot.exists) {
          transaction.update(ref, {
            'name': name,
            'phoneNumber': phone,
          });
        }
      });
    } catch (e) {
      return e;
    }
  }
}
