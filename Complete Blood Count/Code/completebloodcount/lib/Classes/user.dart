import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String _firstname = '';
  String _lastname = '';
  String _birthdate = '';
  String _email = '';
  String _phonenumber = '';
  String _password = '';
  String _gender = '';
  final _firestore = FirebaseFirestore.instance;
  User() {
    // Initialaize Connection (From another class)
    //Add in dataBase
  }
  //Named Constructor
  User.addUser(String fN, String lN, String bD, String e, String pN, String p,
      String g) {
    setFirstName(fN);
    setLastName(lN);
    setBirthDate(bD);
    setEmail(e);
    setPhoneNumber(pN);
    setPassword(p);
    setGender(g);
    addIntoDataBase();
  }
  getID() {
    //Read ID From DataBase
  }

  setFirstName(String fN) {
    if (fN == '') {
      //Display error in UI
      throw 'Error, please Enter Your First Name';
    }
    _firstname = fN;
  }

  getFirstName() {
    return _firstname;
  }

  setLastName(String lN) {
    if (lN == '') {
      throw 'error, please enter your last name';
    }
    _lastname = lN;
  }

  getLastName() {
    return _lastname;
  }

  setBirthDate(String bD) {
    if (bD == '') {
      //Display error in UI
      throw 'Error, please Enter Your Birth Date';
    }
    _birthdate = bD;
  }

  getBirthDate() {
    return _birthdate;
  }

  setEmail(String e) {
    if (e == '') {
      //Display error in UI
      throw 'Error, please Enter Your Email';
    }
    _email = e;
  }

  getEmail() {
    return _email;
  }

  setPhoneNumber(String pN) {
    if (pN.length == 11) {
      _phonenumber = pN;
    } else {
      //Display error in UI
      throw 'Error, please Enter Your Phone Number Correctly';
    }
  }

  getPhoneNumber() {
    return _phonenumber;
  }

  setPassword(String p) {
    if (p == '') {
      //Display error in UI
      throw 'Error, please Enter Your Password';
    }
    _password = p;
  }

  getPassword() {
    return _password;
  }

  setGender(String g) {
    if (g == 'Male') {
      _gender = g;
    } else if (g == 'Female') {
      _gender = g;
    } else {
      throw 'Error, Please Select Gender';
    }
  }

  getGender() {
    return _gender;
  }

  logIn(String email, String password) {
    setEmail(email);
    setPassword(password);
    //Log In Join to the new page
  }

  sendMessage(String email, String message) {
    //Check from database the email if it consists we will send the message
  }

  editProfile(
      {String? firstName,
      String? lastName,
      String? email,
      String? birthDate,
      String? phone,
      String? password}) {
    setFirstName(firstName!);
    setLastName(lastName!);
    setEmail(email!);
    setPassword(password!);
    setBirthDate(birthDate!);
    setPhoneNumber(phone!);

    //This will edit the user profile and update the database
    updateDataInDataBase(getFirstName(), getLastName(), getEmail(),
        getBirthDate(), getPhoneNumber(), getPassword());
  }

  viewMessages() {
    //This function will view data from database
  }
  register() {
    //This function will take an object from Registeration and use the class
  }
  viewResults() {
    //This Message will view Data From Class dataAnalyist
  }

  addIntoDataBase() {
    _firestore.collection('signUp').add({
      'firstName': getFirstName(),
      'lastName': getLastName(),
      'email': getEmail(),
      'password': getPassword(),
      'birthDate': getBirthDate(),
      'phoneNumber': getPhoneNumber(),
      'gender': getGender(),
      //'sender':signedInUser.email,
    });
  }

  updateDataInDataBase(String firstName, String lastName, String email,
      String birthDate, int phone, String password) {
    //This function will update data into data base
  }
}
