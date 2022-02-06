import 'User.dart';
class Match {
  final User _user1;
  final User _user2;
  final String _location;
  final String _time;
  final Set<String> _activity;
  late double _matchScore;
  late bool _accepted;

  Match(this._user1, this._user2, this._location, this._time, this._activity) {
    _matchScore = 0;
    _accepted = false;
  }

  List<User> getUsers() {
    List<User> users = [user1, user2];
    return users;
  }

  String get location => _location;

  bool get accepted => _accepted;

  double get matchScore => _matchScore;

  Set<String> get activity => _activity;

  String get time => _time;

  User get user2 => _user2;

  User get user1 => _user1;

  set matchScore(double value) {
    _matchScore = value;
  }
}