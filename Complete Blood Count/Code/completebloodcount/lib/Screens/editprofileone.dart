import 'package:completebloodcount/models/user.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool showPassword = false;
  final name = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  late String text;
  User user = User();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[600],
        title: Center(
          child: Text(
            'Update Profile',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: const Text(
                  "Edit profile",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 35,
              ),
              TextFormField(
                  autocorrect: true,
                  // initialValue: user.viewUsers()['name'],
                  controller: name,
                  decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ))),
              const SizedBox(height: 20, width: 20),
              TextFormField(
                autocorrect: true,
                controller: password,
                // initialValue: user.viewUsers()['password'],
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                obscureText: true,
              ),
              const SizedBox(height: 20, width: 20),
              TextFormField(
                  autocorrect: true,
                  controller: phone,
                  maxLength: 11,
                  // initialValue: user.viewUsers()['phoneNumber'],
                  decoration: InputDecoration(
                      labelText: "Phone",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ))),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      child: const Text(
                        "SAVE",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[500],
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: () async {
                        if (name.text == '' ||
                            phone.text == '' ||
                            password.text == '') {
                          text = 'Error, Please Fill All Requirements';
                          print(user.getUser());
                          showAlertDialog(context);
                        } else if (phone.text.length <= 10) {
                          text =
                              'Error, Phone Number must be less than 11 Numbers';
                          showAlertDialog(context);
                        } else if (password.text.length <= 6) {
                          text = ' Weak Password !';
                          showAlertDialog(context);
                        } else {
                          await user.editProfile(
                              name: name.text,
                              phone: phone.text,
                              password: password.text);
                          text = 'Done, Data Updated successfully';
                          showAlertDialog(context);
                        }
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(
    BuildContext context,
  ) {
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
