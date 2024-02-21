import 'package:fast_shop/src/config/constants/app_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';



class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String tokenId = "";
  Future<void> storeToken() async {
    tokenId = await _auth.currentUser?.getIdToken(true) ?? "";
    GetStorage().write('tokenId', tokenId);
    print(tokenId);
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    User? user;
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = result.user;
      storeToken();
      return user!;
    } on FirebaseAuthException catch (e) {
      if (kDebugMode) {
        print("error : $e");
      }
      switch (e.code) {
        case 'invalid-email':
          {
            showToast("Email is not valid");
            return null;
          }
        case 'user-disabled':
          {
            showToast('Account is not active');
            return null;
          }
        case 'user-not-found':
          {
            showToast('No user found');
            return null;
          }
        case 'wrong-password':
          {
            showToast('wrong password');
            return null;
          }
        default:
          {
            showToast('Unexpected error!');
            return null;
          }
      }
    }
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    User? user;
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      user = result.user;
      storeToken();
      return user;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          {
            showToast("The email address is already in use by another account");
            return null;
          }
        default:
          {
            showToast('Unexpected error!');
            return null;
          }
      }
    }
  }

  Future resetPass(String email) async {
    try {
      return await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return null;
    }
  }
}
