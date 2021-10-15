class User {
  int _userid = 0;
  String _firstname = '';
  String _lastname = '';
  String _birthdate = '';
  String _email = '';
  int _phonenumber = 0;
  String _password = '';
  String _gender = '';

  User(this._userid) {
    // Initialaize Connection (From another class)
    //Add in dataBase
  }
  //Named Constructor
  User.addUser(
      String fN, String lN, String bD, String e, int pN, String p, String g) {
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
    return _userid;
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

  setPhoneNumber(int pN) {
    if (pN.toString().length == 10) {
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
  }
}

addIntoDataBase() {
  //Here We Will add The New Data
}
