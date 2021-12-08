import 'package:cloud_firestore/cloud_firestore.dart';

class Report {
  String _problem = '';
  String _suggest = '';
  //Doctor doc = new Doctor();
  // ignore: unused_field
  final _firestore = FirebaseFirestore.instance;

  setProblem(String problem) {
    if (problem == '') {
      //Display error in UI
      throw 'Error, You have no problems listed';
    }
    _problem = problem;
  }

  setSuggest(String suggest) {
    if (suggest == '') {
      //Display error in UI
      throw 'Error, There are no suggestions here';
    }
    _suggest = suggest;
  }

  getProblem() {
    return _problem;
  }

  getSuggest() {
    return _suggest;
  }

  viewResults() {
// this function is supposed to view the results of the report
  }

  suggestSolution() {
// this function is supposed to suggest a solution based on the report shown to the user
  }
}
