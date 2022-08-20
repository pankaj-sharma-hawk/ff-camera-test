import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Testsearch1FirebaseUser {
  Testsearch1FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Testsearch1FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Testsearch1FirebaseUser> testsearch1FirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<Testsearch1FirebaseUser>(
        (user) => currentUser = Testsearch1FirebaseUser(user));
