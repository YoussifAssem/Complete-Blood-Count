import 'dart:convert';

import 'dart:async';
import 'package:completebloodcount/Classes/user.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class SQL_Helper {
  Future getData() async {
    var url = 'http://192.168.1.3/dashboard/W/CBC/readData.php';
    var response = await http.get(Uri.parse(url));
    // ignore: avoid_print
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  setData(User u) {
    var url = 'http://192.168.1.3/dashboard/W/CBC/writeData.php';
    http.post(Uri.parse(url), body: {
      'firstName': u.getFirstName(),
      'lastName': u.getLastName(),
      'email': u.getEmail(),
      'password': u.getPassword(),
      'birthDate': u.getBirthDate(),
      'phoneNumber': u.getPhoneNumber(),
      'gender': u.getGender(),
    });
  }

  readFromAPI() async {
    var url = 'http://192.168.1.3/dashboard/W/CBC/API.json';
    var response = await http.get(Uri.parse(url));
    // ignore: avoid_print
    print(json.decode(response.body));
  }

  /*
  Future<Database?> get database async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'CompleteBloodCount.db'),
      onCreate: (db, version) {
        // Run the CREATE TABLE statement.
        return db.execute(
          "CREATE TABLE books(id INTEGER PRIMARY KEY, title TEXT, price INTEGER)",
        );
      },
      // Set the version to perform database upgrades and downgrades.
      version: 1,
    );
    return _database;
  }

  insertStudent(User u) async {
    Database? db = await this.database;
    print('firstName + ${u.getFirstName()}');
    print('lastName + ${u.getLastName()}');
    print('Email + ${u.getEmail()}');
    print('Password + ${u.getPassword()}');
    print('birthDate + ${u.getBirthDate()}');
    print('phoneNumber + ${u.getPhoneNumber()}');
    print('Gender + ${u.getGender()}');

    var result = await db!.rawQuery(
        "INSERT INTO $tableName(firstName, lastName, email, password, birthDate, phoneNumber, gender) VALUES (${u.getFirstName()}, ${u.getLastName()}, ${u.getEmail()}, ${u.getPassword()}, ${u.getBirthDate()}, ${u.getPhoneNumber()}, ${u.getGender()})");
  }
  */
}
