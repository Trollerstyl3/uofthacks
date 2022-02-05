class Match {
  User user1;
  User user2;
  String location;
  String time;
  String activity;
  late double matchScore;
  late bool accepted;

  Match(this.user1, this.user2, this.location, this.time, this.activity) {
    matchScore = 0;
    accepted = false;
  }

  User getUser1() => user1;

  User getUser2() => user2;

  List<User> getUsers() {
    List<User> users = [user1, user2];
    return users;
  }

  String getLocation() => location;

  String getActivity() => activity;

  double getMatchScore() => matchScore;

}