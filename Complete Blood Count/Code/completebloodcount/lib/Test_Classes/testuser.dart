import '../Classes/user.dart';

main() {
  User u = User();
  u.setFirstName('Kareem');
  u.setLastName('Ali');
  u.setBirthDate('20/4/2000');
  u.setEmail('Ahmed@gmail.com');
  u.setPhoneNumber(01006452135);
  u.setPassword('124563');
  u.setGender('Male');

  User u1 = User();
  u1.setFirstName('Mai');
  u1.setLastName('Kamel');
  u1.setBirthDate('20/4/2000');
  u1.setEmail('Mai@gmail.com');
  u1.setPhoneNumber(01114276205);
  u1.setPassword('124563aseqwd');
  u1.setGender('Female');

  print('ID: ${u.getID()}');
  print('FirstName: ${u.getFirstName()}');
  print('LastName: ${u.getLastName()}');
  print('BirthDate: ${u.getBirthDate()}');
  print('Email: ${u.getEmail()}');
  print('PhoneNumber: ${u.getPhoneNumber()}');
  print('Password: ${u.getPassword()}');
  print('Gender: ${u.getGender()}');

  print('ID User2: ${u1.getID()}');
  print('FirstName User2: ${u1.getFirstName()}');
  print('LastName User2: ${u1.getLastName()}');
  print('BirthDate User2: ${u1.getBirthDate()}');
  print('Email User2: ${u1.getEmail()}');
  print('PhoneNumber User2: ${u1.getPhoneNumber()}');
  print('Password User2: ${u1.getPassword()}');
  print('Gender User2: ${u1.getGender()}');
}
