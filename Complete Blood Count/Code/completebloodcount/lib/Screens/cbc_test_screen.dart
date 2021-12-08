import 'package:completebloodcount/Screens/cbc_test_two_screen.dart';
import 'package:completebloodcount/Screens/menu_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  final pcv = TextEditingController();
  final rbcs = TextEditingController();
  final mcv = TextEditingController();
  final mch = TextEditingController();
  final mchc = TextEditingController();
  final rdw = TextEditingController();
  final platCount = TextEditingController();
  final totalCount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Menu(
      'CBC Test',
      Padding(
          padding: const EdgeInsets.only(left: 0),
          child: ListView(
            children: [
              // ignore: avoid_unnecessary_containers
              Table(
                defaultColumnWidth: const FixedColumnWidth(100.0),
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid),
                children: [
                  TableRow(children: [
                    Column(
                      children: const [
                        Text(
                          '\nTest Name',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\nResults',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\nUnit',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          'Biological \n reference \n intervals',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ]),
                  TableRow(children: [
                    Column(
                      children: const [
                        Text(
                          '\nHaemoglobin',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFormField(
                            controller: haemo,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.deny(
                                  RegExp('[^0-9.]')),
                            ],
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\ng/dl',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n11.5-15.5',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: const [
                        Text(
                          '\nHaematocrit\n\t\t\t\t\t(PCV)',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFormField(
                            controller: pcv,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.deny(
                                  RegExp('[^0-9.]')),
                            ],
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n%',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n36-45',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: const [
                        Text(
                          '\nRBCs Count',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFormField(
                            controller: rbcs,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.deny(
                                  RegExp('[^0-9.]')),
                            ],
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\nmillions/cmm',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n4-5.2',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: const [
                        Text(
                          '\nMCV',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFormField(
                            controller: mcv,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.deny(
                                  RegExp('[^0-9.]')),
                            ],
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\nfl',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n80-100',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: const [
                        Text(
                          '\nMCH',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFormField(
                            controller: mch,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.deny(
                                  RegExp('[^0-9.]')),
                            ],
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\npg',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n27-33',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: const [
                        Text(
                          '\nMCHC',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFormField(
                            controller: mchc,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.deny(
                                  RegExp('[^0-9.]')),
                            ],
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\ng/dl',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n31-37',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: const [
                        Text(
                          '\nRDW-CV',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFormField(
                            controller: rdw,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.deny(
                                  RegExp('[^0-9.]')),
                            ],
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n%',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n11.5-15',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: const [
                        Text(
                          '\nPlatelet Count\n(EDTA Blood)',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFormField(
                            controller: platCount,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.deny(
                                  RegExp('[^0-9.]')),
                            ],
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n\tthousands/cmm',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n150-450',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: const [
                        Text(
                          '\nTotal\nleucocytic\n\t\tcount',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFormField(
                            controller: totalCount,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.deny(
                                  RegExp('[^0-9.]')),
                            ],
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n\tthousands/cmm',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n4-11',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      if (haemo.text == '' ||
                          pcv.text == '' ||
                          rbcs.text == '' ||
                          mcv.text == '' ||
                          mch.text == '' ||
                          mchc.text == '' ||
                          rdw.text == '' ||
                          platCount.text == '' ||
                          totalCount.text == '') {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Please Fill All Requriements"),
                        ));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => cbcTestTwo()));
                      }
                    },
                    child: const Text('Next'),
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                  ))
            ],
          )),
    );
  }
}
