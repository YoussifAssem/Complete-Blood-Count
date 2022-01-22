import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'History',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('Users')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .collection('Test')
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Text("You have no lab tests shown in your record"),
              
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              return Column(
                  children: [
                ListTile(
                  title: Text('Haemoglobin'),
                  subtitle: Text(document['Haemoglobin'].toString()),
                ),
                ListTile(
                  title: Text('Haematocrit(PCV)'),
                  subtitle: Text(document['Haematocrit(PCV)'].toString()),
                ),
                ListTile(
                  title: Text('RBCs Count'),
                  subtitle: Text(document['RBCs Count'].toString()),
                ),
                ListTile(
                  title: Text('MCV'),
                  subtitle: Text(document['MCV'].toString()),
                ),
                ListTile(
                  title: Text('MCH'),
                  subtitle: Text(document['MCH'].toString()),
                ),
                ListTile(
                  title: Text('MCHC'),
                  subtitle: Text(document['MCHC'].toString()),
                ),
                ListTile(
                  title: Text('RDW-CV'),
                  subtitle: Text(document['RDW-CV'].toString()),
                ),
                ListTile(
                  title: Text('Platelet Count(EDTA Blood)'),
                  subtitle:
                      Text(document['Platelet Count(EDTA Blood)'].toString()),
                ),
                ListTile(
                  title: Text('Total leucocytic count'),
                  subtitle: Text(document['Total leucocytic count'].toString()),
                ),
                ListTile(
                  title: Text('Neutrophils'),
                  subtitle: Text(document['Neutrophils'].toString()),
                ),
                ListTile(
                  title: Text('Lymphocytes'),
                  subtitle: Text(document['Lymphocytes'].toString()),
                ),
                ListTile(
                  title: Text('Monocytes'),
                  subtitle: Text(document['Monocytes'].toString()),
                ),
                ListTile(
                  title: Text('Eosinphols'),
                  subtitle: Text(document['Eosinphols'].toString()),
                ),
                ListTile(
                  title: Text('Basophils'),
                  subtitle: Text(document['Basophils'].toString()),
                ),
              ].toList());
            }).toList(),
          );
        },
      ),
    );
  }
}
