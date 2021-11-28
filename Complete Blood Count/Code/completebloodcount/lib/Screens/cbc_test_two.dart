import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class cbcTestTwo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _cbcTestTwo();
  }
}

// ignore: camel_case_types
class _cbcTestTwo extends State<cbcTestTwo> {
  final neto = TextEditingController();
  final lympho = TextEditingController();
  final mono = TextEditingController();
  final eos = TextEditingController();
  final baso = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'CBC Test',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: ListView(children: [
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
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          'Absolute Value',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
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
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: const [
                        Text(
                          '\nNeutrophils',
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
                            controller: neto,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text('%'),
                        Text(
                          '1.60',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('x10^9/L'),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n2-7',
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
                          '\nLymphocytes',
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
                            controller: lympho,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text('%'),
                        Text(
                          '2.25',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('x10^9/L'),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n1-4.8',
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
                          '\nMonocytes',
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
                            controller: mono,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text('%'),
                        Text(
                          '0.40',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('x10^9/L'),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n0.2-1',
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
                          '\nEosinophils',
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
                            controller: eos,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text('%'),
                        Text(
                          '0.07',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('x10^9/L'),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n0.1-0.45',
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
                          '\nBasophils',
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
                            controller: baso,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                labelText: "Result",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                    Column(
                      children: const [
                        Text('%'),
                        Text(
                          '0.04',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('x10^9/L'),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '\n0-0.1',
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
                    onPressed: () {},
                    child: const Text('View Report'),
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                  ))
            ])));
  }
}
