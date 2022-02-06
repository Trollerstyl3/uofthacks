import 'dart:html';

class User {
  // Declare variables
  late String _name = "";
  late int _age = 0;
  late Set<String> _activities = <String>{};
  late String _preferredGender = "";
  late String _gender = "";
  late String _time = "";
  late Map _contact;
  late List _potentialMatches = []; // prio queue need to do
  late List _acceptedMatches = [];
  late String _location;

  User(String name, int age, Set<String> activities, String time,
      String preferredGender, Map contact, String location, String gender) {
    _name = name;
    _age = age;
    _activities = activities;
    _time = time;
    _preferredGender = preferredGender;
    _acceptedMatches = [];
    _potentialMatches = [];
    _contact = contact;
    _location = location;
    _gender = gender;
  }

  List get acceptedMatches => _acceptedMatches;

  List get potentialMatches => _potentialMatches;

  Map get contact => _contact;

  String get time => _time;

  String get gender => _gender;

  String get preferredGender => _preferredGender;

  Set<String> get activities => _activities;

  int get age => _age;

  String get name => _name;

  String get location => _location;

  set acceptedMatches(List value) {
    _acceptedMatches = value;
  }

  set potentialMatches(List value) {
    _potentialMatches = value;
  }
  
  set gender(String value) {
    _gender = value;
  }

  set contact(Map value) {
    _contact = value;
  }

  set time(String value) {
    _time = value;
  }

  set preferredGender(String value) {
    _preferredGender = value;
  }

  set activities(Set<String> value) {
    _activities = value;
  }

  set age(int value) {
    _age = value;
  }

  set name(String value) {
    _name = value;
  }

  set location(String value) {
    _location = value;
  }
}
