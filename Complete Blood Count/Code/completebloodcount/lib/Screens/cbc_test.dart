import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class cbcTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _cbcTest();
  }
}

// ignore: camel_case_types
class _cbcTest extends State<cbcTest> {
  final haemo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Laboratory Test',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: ListView(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        'Test Name',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 50),
                    Text(
                      'Results',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 80),
                    Text(
                      'Unit',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 60),
                    SizedBox(
                      width: 55,
                      child: Text(
                        'Biological reference intervals',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 35),
                  ],
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                  child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'Haemoglobin',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 80,
                    child: TextFormField(
                        controller: haemo,
                        autocorrect: true,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            labelText: "Enter Result",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ))),
                  ),
                  const SizedBox(width: 20),
                  const SizedBox(
                    width: 20,
                    child: Text(
                      'L||H',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const SizedBox(
                    width: 40,
                    child: Text(
                      'g/dl',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 40),
                  const SizedBox(
                    width: 70,
                    child: Text(
                      '11.5-15.5',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ))
            ],
          )),
    );
  }
}
