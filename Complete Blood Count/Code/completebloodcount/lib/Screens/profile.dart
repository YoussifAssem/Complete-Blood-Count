import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class profle extends StatefulWidget 
{
  const profle({Key? key}) : super(key: key);

  
  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
  
}

class profilescreen extends State<profle>{
final _firestore = FirebaseFirestore.instance;

    void users () async
  {
    final users =  await _firestore.collection('signUp').get();
    for(var user in users.docs) 
    {
      print (user.data());
    }
  }


  @override
  void initState() {
    super.initState();
    //getCurrentUser();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}
