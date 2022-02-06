import 'User.dart';
import 'match.dart';

class Matcher {
  void match(User user1, User user2) {
    int points = 0;

    if (user1.location == user2.location) {
      if (checkAge(user1, user2)) {
        if (timeDiff(user1, user2) != -1) {
          if (checkPrefererredGender(user1, user2)) {
            var matched = 0;

            points += 6 - (user1.age - user2.age).abs(); // age points
            points += timeDiff(user1, user2);

            var incommon = user1.activities.intersection(user2.activities);
            points += incommon.length * 4;

            if (incommon.length == 0) {
              return;
            } else {
              Match match = Match(user1, user2, user1.location,
                  DateTime.now().toLocal().toString(), incommon);

              match.matchScore = points.toDouble();

              user1.potentialMatches.add(match);
              user2.potentialMatches.add(match);
            }
          }
        }
      }
    }
  }
}

bool checkAge(User user1, User user2) {
  var age1 = user1.age;
  var age2 = user2.age;

  if (age1 >= 18 && age2 >= 18) {
    if ((age1 - age2).abs() <= 5) {
      return true;
    }
  } else if (age1 < 18 && age2 < 18) {
    if ((age1 - age2).abs() <= 5) {
      return true;
    }
  }
  return false;
}

bool checkPrefererredGender(User user1, User user2) {
  var gender1 = user1.gender;
  var gender2 = user2.gender;
  if (user1.preferredGender == 'Any') {
    if (user2.preferredGender == 'Any') {
      return true;
    } else {
      return gender1 == user2.preferredGender;
    }
  } else if (user2.preferredGender == 'Any') {
    return gender2 == user1.preferredGender;
  } else {
    return gender2 == user1.preferredGender && gender1 == user2.preferredGender;
  }
}
// Morning - Noon - Evening - Night - Midnight

Map time = {'Morning': 1, 'Noon': 2, 'Evening': 3, 'Night': 4, 'Midnight': 5};

int timeDiff(User user1, User user2) {
  int time1 = time[user1];
  int time2 = time[user2];
  int diff = (time1 - time2).abs();
  if (diff == 0) {
    return 3;
  } else if (diff == 1) {
    return 1;
  } else if (diff == 4) {
    return 1;
  }
  return -1;
}
