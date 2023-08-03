import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'auth_repositories.dart';

class AuthRepositoriesImpl implements AuthRepositories {
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  Future<void> signUp({required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (error) {
      if (error.code == 'weak-password') {
        throw Exception('The password provided is too weak');
      } else if (error.code == 'email-already-in-use') {
        throw Exception('Email is already exist.Try another email');
      }
    } catch (error) {
      throw Exception(error.toString());
    }
  }

  @override
  Future<void> signIn({required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (error) {
      if (error.code == 'user-not-found') {
        throw Exception('User not found.Try another email.');
      } else if (error.code == 'wrong-password') {
        throw Exception('Wrong password.Try another password');
      }
    }
  }

  @override
  Future<void> signWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
      await _firebaseAuth.signInWithCredential(credential);
    } catch (error) {
      throw Exception(error.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (error) {
      throw Exception(error.toString());
    }
  }
}
