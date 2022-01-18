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

  Future<Object?> saveTest({
    required double haemog,
    required double haema,
    required double rbcs,
    required double mcv,
    required double mch,
    required double mchc,
    required double rdw,
    required double platelet,
    required double total,
    required double neutro,
    required double lympho,
    required double mono,
    required double eos,
    required double baso,
  }) async {
    try {
      var data = {
        'Haemoglobin': haemog,
        'Haematocrit(PCV)': haema,
        'RBCs Count': rbcs,
        'MCV': mcv,
        'MCH': mch,
        'MCHC': mchc,
        'RDW-CV': rdw,
        'Platelet Count(EDTA Blood)': platelet,
        'Total leucocytic count': total,
        'Neutrophils': neutro,
        'Lymphocytes': lympho,
        'Monocytes': mono,
        'Eosinphols': eos,
        'Basophils': baso
      };
      DocumentReference doc =
          user.doc(_auth.currentUser!.uid).collection('Test').doc();
      FirebaseFirestore.instance.runTransaction((transaction) async {
        DocumentSnapshot snapShot = await transaction.get(doc);
        if (!snapShot.exists) {
          doc.set(data);
        } else {
          doc.set(data);
        }
      });
    } catch (e) {
      return e;
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
      if (email == 'joo@gmail.com' && password == '12345678') {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        return 'Done';
      }
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return 'Done';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<List?> getUser() async {
    DocumentReference ref = user.doc(_auth.currentUser!.uid);
    FirebaseFirestore.instance.runTransaction((transaction) async {
      DocumentSnapshot snapShot = await transaction.get(ref);
      List<String> u = [];
      if (snapShot.exists) {
        u.add(snapShot.get('name'));
        u.add(snapShot.get('phoneNumber'));
        return u;
      }
    });
  }

  Future<Object?> editProfile(
      {required String name,
      required String phone,
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
