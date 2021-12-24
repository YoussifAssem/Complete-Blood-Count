import 'package:completebloodcount/Screens/menu_screen.dart';
import 'package:completebloodcount/Screens/report_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_alert_dialog/loading_alert_dialog.dart';

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
  late String text;
  @override
  Widget build(BuildContext context) {
    return Menu(
        'CBC Test',
        Padding(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ElevatedButton(
                    onPressed: () async {
                      if (neto.text == '' ||
                          lympho.text == '' ||
                          mono.text == '' ||
                          eos.text == '' ||
                          baso.text == '') {
                        text = 'Error, Please Fill All Requriements';
                        sAlertDialog(context);
                      } else {
                        await showAlertDialog(context);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Report()));
                      }
                    },
                    child: const Text('View Report'),
                    style: ElevatedButton.styleFrom(primary: Colors.blue[600]),
                  ))
            ])));
  }

  Future showAlertDialog(BuildContext context) =>
      LoadingAlertDialog.showLoadingAlertDialog(
        context: context,
        builder: (
          context,
        ) =>
            Card(
          child: Padding(
            padding: const EdgeInsets.all(
              24.0,
            ),
            child: Column(
              children: const <Widget>[
                CircularProgressIndicator(),
                Text(
                  "Please Wait...",
                ),
              ],
              mainAxisSize: MainAxisSize.min,
            ),
          ),
          color: Colors.white,
        ),
        computation: Future.delayed(
          const Duration(
            seconds: 3,
          ),
        ),
      );
  sAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Alert"),
      content: Text(text),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
