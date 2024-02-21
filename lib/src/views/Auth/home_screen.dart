
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fast_shop/src/views/Auth/login_screen.dart';
import 'package:fast_shop/src/views/Auth/registration_screen.dart';
import 'package:fast_shop/src/views/navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<Widget> _login() async {
      if(FirebaseAuth.instance.currentUser != null) {
        QuerySnapshot _querySnapshot = await FirebaseFirestore.instance
        .collection("users")
        .where("email", isEqualTo: FirebaseAuth.instance.currentUser?.email)
        .get();
        if(_querySnapshot.docs.isEmpty) {
        return const RegistrationScreen();
        } else {
          return NavigationScreen(tabIndex: 1,);
        }
      } else {
        return const LoginScreen();
      }
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
        future: _login(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(body: snapshot.data ?? const CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            final error = snapshot.error;
            return Center(
              child: Text(
                "Error: $error",
              ),
            );
          } else {
            return const Scaffold(
              body: CircularProgressIndicator(),
            );
          }
        });
  }
}
