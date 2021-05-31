import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MitaMajiFirebaseUser {
  MitaMajiFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

MitaMajiFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MitaMajiFirebaseUser> mitaMajiFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MitaMajiFirebaseUser>(
            (user) => currentUser = MitaMajiFirebaseUser(user));
