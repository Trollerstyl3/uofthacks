class User {
  // Declare variables
  late String _name = "";
  late int _age = 0;
  late Set<String> _activities = <String>{};
  late String _preferredGender = "";
  late String _time = "";
  late Map _contact ;
  late List _potentialMatches = []; // prio queue need to do
  late List _acceptedMatches = [];

  Users(String name, int age, Set<String> activities, String time, String preferredGender,
    Map contact
  ) {
    _name = name;
    _age = age;
    _activities = activities;
    _time = time;
    _preferredGender = preferredGender;
    _acceptedMatches = [];
    _potentialMatches = [];
    _contact = contact;
  }
}
