class User {
  int _userID = 0;
  String _firstName = '';
  String _lastName = '';
  String _birthDate = '';
  String _email = '';
  int phoneNumber = 0;
  String _password = '';
  String gender = '';

  User() {
    // Initialaize Connection (From another class)
    //Add in dataBase
  }
  //Named Constructor
  User.addID(this._userID) {}
  getID() {
    return this._userID;
  }

  setFirstName(String fN) {
    if (fN == '')
      //Display error in UI
      throw 'Error, please Enter Your First Name';

    this._firstName = fN;
  }

  getFirstName() {
    return this._firstName;
  }

  setLastName(String lN) {
    if (lN == '')
      //Display error in UI
      throw 'Error, please Enter Your Last Name';
    this._lastName = lN;
  }

  getLastName() {
    return this._lastName;
  }

  setBirthDate(String bD) {
    if (bD == '')
      //Display error in UI
      throw 'Error, please Enter Your Birth Date';

    this._birthDate = bD;
  }

  getBirthDate() {
    return this._birthDate;
  }

  setEmail(String e) {
    if (e == '')
      //Display error in UI
      throw 'Error, please Enter Your Email';

    this._email = e;
  }

  getEmail() {
    return this._email;
  }

  setPhoneNumber(int pN) {
    if (pN.toString().length == 10)
      this.phoneNumber = pN;
    else
      //Display error in UI
      throw 'Error, please Enter Your Phone Number Correctly';
  }

  getPhoneNumber() {
    return this.phoneNumber;
  }

  setPassword(String p) {
    if (p == '')
      //Display error in UI
      throw 'Error, please Enter Your Password';

    this._password = p;
  }

  getPassword() {
    return this._password;
  }

  setGender(String g) {
    if (g == 'Male')
      this.gender = g;
    else if (g == 'Female')
      this.gender = g;
    else
      throw 'Error, Please Select Gender';
  }

  getGender() {
    return this.gender;
  }

  logIn(String email, String password) {
    this.setEmail(email);
    this.setPassword(password);
  }
}
