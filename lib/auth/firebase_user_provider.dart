// @dart=2.9
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NeuroCareTestFirebaseUser {
  NeuroCareTestFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

NeuroCareTestFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NeuroCareTestFirebaseUser> neuroCareTestFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<NeuroCareTestFirebaseUser>(
            (user) => currentUser = NeuroCareTestFirebaseUser(user));
