class BloodAnalysis {
  // ignore: unused_field
  int _reportID = 0;
  // ignore: unused_field
  late final int _patientID = 0;
  // ignore: unused_field
  late final String _results = '';
  BloodAnalysis() {
    _reportID++;
  }
  BloodAnalysis.data(patientID) {
    //_patientID = patientID;
  }

  Map<String, String> viewResults() {
    // ignore: unused_local_variable
    Map<String, String> map = {
      'reportID': _reportID.toString(),
      'patientID': _patientID.toString(),
      'Results': _results,
    };
    return map;
  }
}
